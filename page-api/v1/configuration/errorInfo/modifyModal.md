# 错误信息 - 修改

## 权限

> **read,configuration-errorInfo-modifyModal-read**

> **read-my-department,configuration-errorInfo-modifyModal-read-my-department**

> **read-my,configuration-errorInfo-modifyModal-read-my**

## 路径

[./configuration/errorInfo/modifyModal.json](../../../../configuration/errorInfo/modifyModal.json)

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
  "errorInfoCode": null,
  "errorInfoId": null,
  "lastModifiedByCode": null,
  "lastModifiedDate": null,
  "message": null,
  "orgCode": null,
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
departmentCode|true|String|部门代码
endDate|true|Date|结束时间
errorInfoCode|true|String|错误信息代码
errorInfoId|true|String|错误信息标识
lastModifiedByCode|true|String|最后修改人代码
lastModifiedDate|true|Date|最后修改时间
message|true|String|消息
orgCode|true|String|组织代码
permissionCodes|true|String|许可代码集合
roleCodes|true|String|角色代码集合
stateCode|true|String|状态代码
version|true|Long|版本
wfId|true|String|工作流标识
