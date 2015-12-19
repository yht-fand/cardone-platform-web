# 日志

## 权限

> **read,log-index-read**

> **read-my-department,log-index-read-my-department**

> **read-my,log-index-read-my**

## 路径

[./log/index.json](../../../log/index.json)

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
  "log_operateLog_index": true
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
log_operateLog_index|true|boolean|是否有权限访问操作日志
