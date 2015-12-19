define(['backbone'], function () {
    'use strict';
    return Backbone.Model.extend({
        url: C1.apiUrlRoot + '/v1/workflow/wfVariable/u0001.json',
        validate: function (attrs, options) {
            if (!attrs.code || $.trim(attrs.code) === '') {
                return '工作流变量编码不能为空值';
            }
        }
    });
});