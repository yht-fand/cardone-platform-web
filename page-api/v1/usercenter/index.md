# 用户中心

## 权限

> **read,usercenter-index-read**

> **read-my-department,usercenter-index-read-my-department**

> **read-my,usercenter-index-read-my**

## 路径

[./usercenter/index.json](../../../usercenter/index.json)

## 类型

HTTP GET

## 输入示例

```
{
  "token": "test"
}
```

## 输入说明

字段名|可为空|类型及范围|说明
---|---|---|---
token|false|String|授权认证码

## 输出示例

```
{
  "usercenter_org_index": true,
  "usercenter_department_index": true,
  "usercenter_user_index": true
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
usercenter_org_index|true|boolean|是否有权限访问组织
usercenter_department_index|true|boolean|是否有权限访问部门
usercenter_user_index|true|boolean|是否有权限访问用户
