define(['text!./modifyModal.tpl.html', './ModifyModalModel', 'text!./modifyModal.tpl.html', 'css!./modifyModal.css'], function (modifyModalTpl, ModifyModalModel) {
    'use strict';
    return Marionette.LayoutView.extend({
        id: "usercenter-user-modifyModal-" + _.now(),
        className: 'modal hide fade usercenter-user-modifyModal',
        model: new ModifyModalModel(),
        serializeData: function () {
            var data = _.defaults(this.options.data, this.serializeModel());

            C1.log.debug(data);

            return data;
        },
        serializeModel: function () {
            var data = C1.serializeToJson(this.$('form'));

            data.token = C1.user.get("token");

            return data;
        },
        events: {
            'click button[name="save"]': "onSave",
            'shown': 'onShown',
            'click button[aria-hidden="true"]': 'onHidden'
        },
        initialize: function (options) {
            this.template = _.template(modifyModalTpl);
            this.listenTo(this.model, 'invalid', this.onInvalid);
        },
        onInvalid: function () {
            if (this.progressModelView) {
                this.progressModelView.hide();
            }

            C1.showAlertModal({"message": this.model.validationError});
        },
        onRender: function () {
            this.$el.modal({
                "backdrop": "static",
                "show": true
            });

            return this;
        },
        onShown: function () {
            this.$el.animate({
                'margin-left': -(this.$el.width() / 2)
            });
        },
        saveSuccess: $.noop(),
        onSave: function (event) {
            event.preventDefault();

            var that = this;

            C1.showProgressModal({
                callback: function (progressModelView) {
                    that.progressModelView = progressModelView;

                    that.model.clear().save(that.serializeModel(), {
                        success: C1.ajaxSuccess(function (model, response) {
                            that.$el.modal('hide');

                            that.onHidden();

                            that.getOption('saveSuccess')();
                        }, progressModelView),
                        error: C1.ajaxError(null, progressModelView)
                    });
                }
            });
        },
        onHidden: function () {
            var that = this;

            window.setTimeout(function () {
                that.triggerMethod("view:removeRegion");
            }, 3000);
        }
    });
});