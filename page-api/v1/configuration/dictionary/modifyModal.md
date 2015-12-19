# 字典 - 修改

## 权限

> **read,configuration-dictionary-modifyModal-read**

> **read-my-department,configuration-dictionary-modifyModal-read-my-department**

> **read-my,configuration-dictionary-modifyModal-read-my**

## 路径

[./configuration/dictionary/modifyModal.json](../../../../configuration/dictionary/modifyModal.json)

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
  "dictionaryCode": null,
  "dictionaryId": null,
  "dictionaryTypeCode": null,
  "endDate": null,
  "explain": null,
  "lastModifiedByCode": null,
  "lastModifiedDate": null,
  "name": null,
  "order": null,
  "orgCode": null,
  "permissionCodes": null,
  "remark": null,
  "roleCodes": null,
  "stateCode": null,
  "value": null,
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
dictionaryCode|true|String|字典代码
dictionaryId|true|String|字典标识
dictionaryTypeCode|true|String|字典类别代码
endDate|true|Date|结束时间
explain|true|String|解释
lastModifiedByCode|true|String|最后修改人代码
lastModifiedDate|true|Date|最后修改时间
name|true|String|名称
order|true|Long|排序
orgCode|true|String|组织代码
permissionCodes|true|String|许可代码集合
remark|true|String|说明
roleCodes|true|String|角色代码集合
stateCode|true|String|状态代码
value|true|String|值
version|true|Long|版本
wfId|true|String|工作流标识
