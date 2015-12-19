# 配置

## 权限

> **read,configuration-index-read**

> **read-my-department,configuration-index-read-my-department**

> **read-my,configuration-index-read-my**

## 路径

[./configuration/index.json](../../../configuration/index.json)

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
  "configuration_dictionaryType_index": true,
  "configuration_dictionary_index": true
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
configuration_dictionaryType_index|true|boolean|是否有权限访问字典类别
configuration_dictionary_index|true|boolean|是否有权限访问字典
