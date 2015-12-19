# 权限

## 权限

> **read,authority-index-read**

> **read-my-department,authority-index-read-my-department**

> **read-my,authority-index-read-my**

## 路径

[./authority/index.json](../../../authority/index.json)

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
  "authority_navigation_index": true,
  "authority_permission_index": true,
  "authority_role_index": true,
  "authority_rolePermission_index": true,
  "authority_userGroup_index": true,
  "authority_userGroupRole_index": true,
  "authority_userGroupUser_index": true,
  "authority_userPermission_index": true,
  "authority_userRole_index": true
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
authority_navigation_index|true|boolean|是否有权限访问导航
authority_permission_index|true|boolean|是否有权限访问许可
authority_role_index|true|boolean|是否有权限访问角色
authority_rolePermission_index|true|boolean|是否有权限访问角色与许可
authority_userGroup_index|true|boolean|是否有权限访问用户组
authority_userGroupRole_index|true|boolean|是否有权限访问用户组与角色
authority_userGroupUser_index|true|boolean|是否有权限访问用户组与用户
authority_userPermission_index|true|boolean|是否有权限访问用户与许可
authority_userRole_index|true|boolean|是否有权限访问用户与角色
