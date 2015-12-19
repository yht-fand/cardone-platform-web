# 文章 - 修改

## 权限

> **read,cms-article-modifyModal-read**

> **read-my-department,cms-article-modifyModal-read-my-department**

> **read-my,cms-article-modifyModal-read-my**

## 路径

[./cms/article/modifyModal.json](../../../../cms/article/modifyModal.json)

## 类型

HTTP GET

## 输入示例

```
{
  "id": "test",
  "token": "test"
}
```

## 输入说明

字段名|可为空|类型及范围|说明
---|---|---|---
id|false|String|主键
token|false|String|授权认证码

## 输出示例
```
{
  "articleId": null,
  "beginDate": null,
  "content": null,
  "createdByCode": null,
  "createdDate": null,
  "dataStateCode": null,
  "departmentCode": null,
  "endDate": null,
  "intro": null,
  "lastModifiedByCode": null,
  "lastModifiedDate": null,
  "orgCode": null,
  "permissionCodes": null,
  "pictureUrl": null,
  "recom": null,
  "releaseDate": null,
  "roleCodes": null,
  "stateCode": null,
  "title": null,
  "typeCode": null,
  "version": null,
  "wfId": null
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
articleId|true|String|文章标识
beginDate|true|Date|开始时间
content|true|String|正文
createdByCode|true|String|创建人代码
createdDate|true|Date|创建时间
dataStateCode|true|String|数据状态代码
departmentCode|true|String|部门代码
endDate|true|Date|结束时间
intro|true|String|简介
lastModifiedByCode|true|String|最后修改人代码
lastModifiedDate|true|Date|最后修改时间
orgCode|true|String|组织代码
permissionCodes|true|String|许可代码集合
pictureUrl|true|String|图片路径
recom|true|String|推荐
releaseDate|true|Date|发布日期
roleCodes|true|String|角色代码集合
stateCode|true|String|状态代码
title|true|String|标题
typeCode|true|String|类别代码
version|true|Long|版本
wfId|true|String|工作流标识
