# 组织 - 修改

## 权限

> **read,usercenter-org-modifyModal-read**

> **read-my-department,usercenter-org-modifyModal-read-my-department**

> **read-my,usercenter-org-modifyModal-read-my**

## 路径

[./usercenter/org/modifyModal.json](../../../../usercenter/org/modifyModal.json)

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
  "beginDate": null,
  "createdByCode": null,
  "createdDate": null,
  "dataStateCode": null,
  "endDate": null,
  "lastModifiedByCode": null,
  "lastModifiedDate": null,
  "name": null,
  "orgCode": null,
  "orgId": null,
  "parentCode": null,
  "parentTreeCode": null,
  "parentTreeName": null,
  "permissionCodes": null,
  "roleCodes": null,
  "stateCode": null,
  "version": null,
  "wfId": null
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
beginDate|true|Date|开始时间
createdByCode|true|String|创建人代码
createdDate|true|Date|创建时间
dataStateCode|true|String|数据状态代码
endDate|true|Date|结束时间
lastModifiedByCode|true|String|最后修改人代码
lastModifiedDate|true|Date|最后修改时间
name|true|String|名称
orgCode|true|String|组织代码
orgId|true|String|组织标识
parentCode|true|String|父级代码
parentTreeCode|true|String|父级树代码
parentTreeName|true|String|父级树名称
permissionCodes|true|String|许可代码集合
roleCodes|true|String|角色代码集合
stateCode|true|String|状态代码
version|true|Long|版本
wfId|true|String|工作流标识
