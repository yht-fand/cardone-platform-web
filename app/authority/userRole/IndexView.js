define(['text!./index.tpl.html', './IndexModel'], function (indexTpl, IndexModel) {
    'use strict';
    return Marionette.LayoutView.extend({
        id: "authority-userRole-index-" + _.now(),
        serializeData: function () {
            var data = _.defaults(this.options.data, this.serializeModel());

            return data;
        },
        model: new IndexModel(),
        serializeModel: function (model) {
            var data = C1.serializeToJson(this.$('form'));

            data.token = C1.user.get("token");

            return data;
        },
        initialize: function () {
            this.template = _.template(indexTpl);

            C1.joinCheckboxs({
                $el: this.$el,
                mainSelector: 'input[name="all-id"]',
                childSelector: 'input[name="id"]'
            });
        },
        events: {
            'click button[name="search"]': "onSearch",
            'click .pagination button': "onSearch",
            'click button[name="addData"]': "onAddData",
            'click button[name="modifyData"]': "onModifyData",
            'click button[name="removeData"]': "onRemoveData"
        },
        onSearch: function (event) {
            if (event) {
                event.preventDefault();

                var page = this.$(event.currentTarget).data("page");

                this.$('form input[name="pageNumber"]').val(page);
            }

            var that = this;

            C1.showProgressModal({
                callback: function (progressModelView) {
                    that.progressModelView = progressModelView;

                    that.model.clear().save(that.serializeModel(), {
                        success: C1.ajaxSuccess(function (model, response) {
                            C1.loadTemplate('./authority/userRole/index.page.tpl.html', function (template) {
                                that.$('.table-responsive').html(template(response));
                            });
                        }, progressModelView),
                        error: C1.ajaxError(null, progressModelView)
                    });
                }
            });
        },
        onAddData: function (event) {
            event.preventDefault();

            var that = this;

            C1.loadView({
                url: "./authority/userRole/addModal",
                successCallback: function (addModalView) {
                    addModalView.options.saveSuccess = function () {
                        that.onSearch();
                    };

                    C1.Application.vent.trigger("appendShow", addModalView);
                }
            });
        },
        onModifyData: function (event) {
            event.preventDefault();

            var idEl = this.$('.table-responsive input[name="id"]:checked');

            var errorMessage;

            if (idEl.length > 1) {
                errorMessage = "选择修改的数据超过一条";
            } else if (idEl.length < 1) {
                errorMessage = "未选择需修改的数据";
            }

            if (errorMessage) {
                C1.showAlertModal({"message": errorMessage});

                return;
            }

            var id = idEl.val();

            var that = this;

            C1.loadView({
                url: "./authority/userRole/modifyModal",
                data: {
                    id: id
                },
                successCallback: function (modifyModalView) {
                    modifyModalView.options.saveSuccess = function () {
                        that.onSearch();
                    };

                    C1.Application.vent.trigger("appendShow", modifyModalView);
                }
            });
        },
        onRemoveData: function (event) {
            event.preventDefault();

            var idEl = this.$('.table-responsive input[name="id"]:checked');

            if (idEl.length < 1) {
                C1.showAlertModal({"message": "未选择需删除的数据"});

                return;
            }

            var that = this;

            C1.showConfirmModal({
                "message": "确认删除数据？",
                fn: function (confirm) {
                    if (!confirm) {
                        return;
                    }

                    var ids = [];

                    idEl.each(function () {
                        ids.push($(this).val());
                    });

                    var url = C1.apiUrlRoot + '/v1/authority/userRole/d0001.json';

                    var inputData = {
                        ids: ids.join(','),
                        token: C1.user.get("token")
                    };

                    $.post(url, inputData, function (response) {
                        if (response.errorCode) {
                            C1.showAlertModal({"message": response.error});

                            return;
                        }

                        that.onSearch();
                    });
                }
            });
        }
    });
})
;