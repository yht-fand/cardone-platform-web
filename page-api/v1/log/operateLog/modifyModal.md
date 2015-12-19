# 操作日志 - 修改

## 权限

> **read,log-operateLog-modifyModal-read**

> **read-my-department,log-operateLog-modifyModal-read-my-department**

> **read-my,log-operateLog-modifyModal-read-my**

## 路径

[./log/operateLog/modifyModal.json](../../../../log/operateLog/modifyModal.json)

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
  "createdByCode": null,
  "createdDate": null,
  "departmentCode": null,
  "message": null,
  "operateLogCode": null,
  "operateLogId": null,
  "orgCode": null,
  "typeCode": null
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
createdByCode|true|String|创建人代码
createdDate|true|Date|创建时间
departmentCode|true|String|部门代码
message|true|String|消息
operateLogCode|true|String|操作日志代码
operateLogId|true|String|操作日志标识
orgCode|true|String|组织代码
typeCode|true|String|类别代码
