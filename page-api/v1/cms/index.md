# 内容

## 权限

> **read,cms-index-read**

> **read-my-department,cms-index-read-my-department**

> **read-my,cms-index-read-my**

## 路径

[./cms/index.json](../../../cms/index.json)

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
  "cms_article_index": true,
  "cms_notice_index": true
}
```

## 输出说明

字段名|可为空|类型及范围|说明
---|---|---|---
cms_article_index|true|boolean|是否有权限访问文章
cms_notice_index|true|boolean|是否有权限访问公告
