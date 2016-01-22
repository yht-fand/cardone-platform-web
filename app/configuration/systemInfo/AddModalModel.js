define(['backbone'], function () {
    'use strict';
    return Backbone.Model.extend({
        url: C1.apiUrlRoot + '/v1/configuration/systemInfo/c0001.json',
        validate: function (attrs, options) {
            if (!attrs.code || $.trim(attrs.code) === '') {
                return '系统信息编码不能为空值';
            }
        }
    });
});