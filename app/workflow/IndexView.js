define(['text!./index.tpl.html'], function (indexTpl) {
    'use strict';
    return Marionette.LayoutView.extend({
        id: "workflow-index" + _.now(),
        serializeData: function () {
            var data = this.options.data;

            return data;
        },
        initialize: function () {
            this.template = _.template(indexTpl);
        },
        events: {
            'click .nav-pills a': 'onShowTab'
        },
        onShowTab: function (event) {
            event.preventDefault();

            var oneClick = this.$(event.currentTarget).data("one-click");

            if (oneClick) {
                return;
            }

            this.$(event.currentTarget).data("one-click", true);

            var href = this.$(event.currentTarget).attr('href');

            if (!href) {
                return;
            }

            var el = this.$(href);

            if (el.length < 1) {
                return;
            }

            var viewUrl = el.data('view-url');

            if (!viewUrl) {
                return;
            }

            var that = this;

            var regionId = href.replace("#", "");

            C1.loadView({
                url: viewUrl,
                successCallback: function (view) {
                    that.getRegion(regionId).show(view);
                },
                errorCallback: function () {
                    C1.showAlertModal({"message": '不存在的模块：' + viewUrl});
                }
            });
        },
        onRender: function () {
            var regionDefinitions = {};

            this.$('.tab-pane').each(function () {
                var id = $(this).attr("id");

                regionDefinitions[id] = "#" + id;
            });

            this.addRegions(regionDefinitions);

            this.$('.nav-pills li.active a').trigger('click');
        }
    });
});