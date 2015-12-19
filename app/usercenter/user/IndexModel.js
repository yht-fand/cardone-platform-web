define(['backbone'], function () {
    'use strict';
    return Backbone.Model.extend({
        url: C1.apiUrlRoot + '/v1/usercenter/user/r0003.json',
        validate: function (attrs, options) {
        }
    });
});