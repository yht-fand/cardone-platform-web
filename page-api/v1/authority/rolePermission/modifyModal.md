# 角色与许可 - 修改

## 权限

> **read,authority-rolePermission-modifyModal-read**

> **read-my-department,authority-rolePermission-modifyModal-read-my-department**

> **read-my,authority-rolePermission-modifyModal-read-my**

## 路径

[./authority/rolePermission/modifyModal.json](../../../../authority/rolePermission/modifyModal.json)

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
  "departmentCode": null,
  "endDate": null,
  "lastModifiedByCode": null,
  "lastModifiedDate": null,
  "orgCode": null,
  "permissionCode": null,
  "permissionCodes": null,
  "roleCode": null,
  "roleCodes": null,
  "rolePermissionId": null,
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
departmentCode|true|String|部门代码
endDate|true|Date|结束时间
lastModifiedByCode|true|String|最后修改人代码
lastModifiedDate|true|Date|最后修改时间
orgCode|true|String|组织代码
permissionCode|true|String|许可代码
permissionCodes|true|String|许可代码集合
roleCode|true|String|角色代码
roleCodes|true|String|角色代码集合
rolePermissionId|true|String|角色与许可标识
stateCode|true|String|状态代码
version|true|Long|版本
wfId|true|String|工作流标识
