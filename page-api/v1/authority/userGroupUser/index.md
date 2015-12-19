# 用户组与用户 - 搜索

## 权限

> **read,authority-userGroupUser-index-read**

> **read-my-department,authority-userGroupUser-index-read-my-department**

> **read-my,authority-userGroupUser-index-read-my**

## 路径

[./authority/userGroupUser/index.json](../../../../authority/userGroupUser/index.json)

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
  "permission_add": true,
  "permission_modify": true,
  "permission_delete": true,
  "permission_impData": true,
  "permission_expData": true
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
permission_add|true|boolean|是否可以新增
permission_modify|true|boolean|是否可以修改
permission_delete|true|boolean|是否可以删除
permission_impData|true|boolean|是否可以导入
permission_expData|true|boolean|是否可以导出