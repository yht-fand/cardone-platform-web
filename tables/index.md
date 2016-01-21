
### 日志(log)

#### ER 图

![日志](log.png)

#### 表结构

##### 操作日志（t_operate_log）

字段名|可为空|类型及范围|说明
---|---|---|---
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DEPARTMENT_CODE|YES|String(36)|部门代码
MESSAGE|YES|String(512)|消息
OPERATE_LOG_CODE|NO|String(36)|操作日志代码
OPERATE_LOG_ID|NO|String(36)|操作日志标识
ORG_CODE|YES|String(36)|组织代码
TYPE_CODE|NO|String(36)|类别代码

### 用户中心(usercenter)

#### ER 图

![用户中心](usercenter.png)

#### 表结构

##### 组织（t_org）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|YES|String(256)|名称
ORG_CODE|NO|String(36)|组织代码
ORG_ID|NO|String(36)|组织标识
PARENT_CODE|YES|String(36)|父级代码
PARENT_TREE_CODE|YES|String(1024)|父级树代码
PARENT_TREE_NAME|YES|String(1024)|父级树名称
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 部门（t_department）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
DEPARTMENT_ID|NO|String(36)|部门标识
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|NO|String(256)|名称
ORG_CODE|YES|String(36)|组织代码
PARENT_CODE|YES|String(36)|父级代码
PARENT_TREE_CODE|YES|String(1024)|父级树代码
PARENT_TREE_NAME|YES|String(1024)|父级树名称
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 用户（t_user）

字段名|可为空|类型及范围|说明
---|---|---|---
ADDRESS|YES|String(256)|地址
AGE|YES|Long(10)|年龄
AREA_CODE|YES|String(36)|区域代码
BEGIN_DATE|YES|Date(8)|开始时间
BIRTHDAY|YES|Date(8)|出生日期
CALL_NAME|YES|String(256)|昵称
CITY_CODE|YES|String(36)|市代码
COMPANY_NAME|YES|String(256)|工作单位
COUNTRY_CODE|YES|String(36)|国家代码
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
DIPLOMA_CODE|YES|String(36)|学历/文凭代码
EMAIL|YES|String(256)|邮箱
END_DATE|YES|Date(8)|结束时间
FLAG_CODE|YES|String(36)|标记代码
FOLK_CODE|YES|String(36)|民族代码
ID_CARD_NO|YES|String(256)|身份证号码
INTRO|YES|String(65535)|简介
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
LOCUS|YES|String(256)|现居住地
MARRY_STATE_CODE|YES|String(36)|婚姻状态代码
MOBILE_PHONE|YES|String(256)|手机
NAME|YES|String(256)|名称
ORG_CODE|YES|String(36)|组织代码
PASSWORD_|NO|String(256)|密码
PASSWORD_SALT|YES|String(256)|密码盐
PERMISSION_CODES|YES|String(1024)|许可代码集合
PORTRAIT_URL|YES|String(256)|肖像路径
PRIVATE_PASSWORD|YES|String(256)|隐私资料查看密码
PRIVATE_PASSWORD_SALT|YES|String(256)|隐私密码盐
PROFESSION_CODE|YES|String(36)|职业代码
PROVINCE_CODE|YES|String(36)|省代码
QQ|YES|String(256)|QQ号码
ROLE_CODES|YES|String(1024)|角色代码集合
SEX_CODE|YES|String(36)|性别代码
STATE_CODE|YES|String(36)|状态代码
TELEPHONE|YES|String(256)|联系电话
USER_CODE|NO|String(36)|用户代码
USER_ID|NO|String(36)|用户标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

### 配置(configuration)

#### ER 图

![配置](configuration.png)

#### 表结构

##### 字典类别（t_dictionary_type）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
DICTIONARY_TYPE_CODE|NO|String(36)|字典类别代码
DICTIONARY_TYPE_ID|NO|String(36)|字典类别标识
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|YES|String(256)|名称
ORDER_|YES|Long(19)|排序
ORG_CODE|YES|String(36)|组织代码
PARENT_CODE|YES|String(36)|父级代码
PARENT_TREE_CODE|YES|String(1024)|父级树代码
PARENT_TREE_NAME|YES|String(1024)|父级树代名称
PERMISSION_CODES|YES|String(1024)|许可代码集合
REMARK|YES|String(512)|说明
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 字典（t_dictionary）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
DICTIONARY_CODE|NO|String(36)|字典代码
DICTIONARY_ID|NO|String(36)|字典标识
DICTIONARY_TYPE_CODE|NO|String(36)|字典类别代码
END_DATE|YES|Date(8)|结束时间
EXPLAIN_|YES|String(512)|解释
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|YES|String(256)|名称
ORDER_|YES|Long(19)|排序
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
REMARK|YES|String(512)|说明
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
VALUE_|YES|String(1024)|值
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 国际化信息（T_I18N_INFO）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CONTENT|YES|String(4000)|正文
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
I18N_INFO_CODE|NO|String(36)|国际化信息代码
I18N_INFO_ID|NO|String(36)|国际化信息标识
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
TYPE_CODE|NO|String(36)|类别代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 错误信息（T_ERROR_INFO）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CONTENT|YES|String(4000)|正文
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
ERROR_INFO_CODE|NO|String(36)|错误信息代码
ERROR_INFO_ID|NO|String(36)|错误信息标识
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
TYPE_CODE|NO|String(36)|类别代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

### 权限(authority)

#### ER 图

![权限](authority.png)

#### 表结构

##### 导航（t_navigation）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_OPTION|YES|String(512)|数据选项
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
ICON_STYLE|YES|String(256)|图标样式
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|YES|String(256)|名称
NAVIGATION_CODE|NO|String(36)|导航代码
NAVIGATION_ID|NO|String(36)|导航标识
ORDER_|YES|Long(19)|排序
ORG_CODE|YES|String(36)|组织代码
PARENT_CODE|YES|String(36)|父级代码
PARENT_TREE_CODE|YES|String(1024)|父级树代码
PARENT_TREE_NAME|YES|String(1024)|父级树名称
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
TARGET|YES|String(256)|目标
TYPE_CODE|YES|String(36)|类别代码
URL|YES|String(256)|URL
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 许可（t_permission）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PARENT_CODE|YES|String(36)|父级代码
PARENT_TREE_CODE|YES|String(1024)|父级树代码
PARENT_TREE_NAME|YES|String(1024)|父级树名称
PERMISSION_CODE|NO|String(36)|许可代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
PERMISSION_ID|NO|String(36)|许可标识
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 角色（t_role）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|YES|String(256)|名称
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODE|NO|String(36)|角色代码
ROLE_CODES|YES|String(1024)|角色代码集合
ROLE_ID|NO|String(36)|角色标识
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 角色与许可（t_role_permission）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODE|NO|String(36)|许可代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODE|NO|String(36)|角色代码
ROLE_CODES|YES|String(1024)|角色代码集合
ROLE_PERMISSION_ID|NO|String(36)|角色与许可标识
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 用户组（t_user_group）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NAME|YES|String(256)|名称
ORDER_|YES|Long(19)|排序
ORG_CODE|YES|String(36)|组织代码
PARENT_CODE|YES|String(36)|父级代码
PARENT_TREE_CODE|YES|String(1024)|父级树代码
PARENT_TREE_NAME|YES|String(1024)|父级树名称
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
USER_GROUP_CODE|NO|String(36)|用户组代码
USER_GROUP_ID|NO|String(36)|用户组标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 用户组与角色（t_user_group_role）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODE|NO|String(36)|角色代码
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
USER_GROUP_CODE|NO|String(36)|用户组代码
USER_GROUP_ROLE_ID|NO|String(36)|用户组与角色标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 用户组与用户（t_user_group_user）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
USER_CODE|NO|String(36)|用户代码
USER_GROUP_CODE|NO|String(36)|用户组代码
USER_GROUP_USER_ID|NO|String(36)|用户组与用户标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 用户与许可（t_user_permission）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
FLAG_CODE|YES|String(36)|标记代码
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODE|NO|String(36)|许可代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
USER_CODE|NO|String(36)|用户代码
USER_PERMISSION_ID|NO|String(36)|用户与许可标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 用户与角色（t_user_role）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
FLAG_CODE|YES|String(36)|标记代码
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODE|NO|String(36)|角色代码
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
USER_CODE|NO|String(36)|用户代码
USER_ROLE_ID|NO|String(36)|用户与角色标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

### 工作流(workflow)

#### ER 图

![工作流](workflow.png)

#### 表结构

##### 工作流变量（t_wf_variable）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CONTENT|YES|String(4000)|正文
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识
WF_KEY|YES|String(255)|工作流键
WF_VARIABLE_ID|NO|String(36)|工作流变量标识

##### 工作流变量与用户（t_wf_variable_user）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CONTENT|YES|String(4000)|正文
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
USER_CODE|NO|String(36)|用户代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识
WF_KEY|NO|String(255)|工作流键
WF_VARIABLE_USER_ID|NO|String(36)|工作流变量与用户标识

### 内容(cms)

#### ER 图

![内容](cms.png)

#### 表结构

##### 文章（t_article）

字段名|可为空|类型及范围|说明
---|---|---|---
ARTICLE_ID|NO|String(36)|文章标识
BEGIN_DATE|YES|Date(8)|开始时间
CONTENT|YES|String(4000)|正文
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
INTRO|YES|String(65535)|简介
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
PICTURE_URL|YES|String(256)|图片路径
RECOM|YES|String(1)|推荐
RELEASE_DATE|YES|Date(8)|发布日期
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
TITLE|NO|String(256)|标题
TYPE_CODE|YES|String(36)|类别代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识

##### 公告（t_notice）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(8)|开始时间
CONTENT|YES|String(4000)|正文
CREATED_BY_CODE|YES|String(36)|创建人代码
CREATED_DATE|YES|Date(8)|创建时间
DATA_STATE_CODE|YES|String(36)|数据状态代码
DEPARTMENT_CODE|YES|String(36)|部门代码
END_DATE|YES|Date(8)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(36)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(8)|最后修改时间
NOTICE_ID|NO|String(36)|公告标识
ORG_CODE|YES|String(36)|组织代码
PERMISSION_CODES|YES|String(1024)|许可代码集合
PICTURE_URL|YES|String(256)|图片路径
RELEASE_DATE|YES|Date(8)|发布日期
ROLE_CODES|YES|String(1024)|角色代码集合
STATE_CODE|YES|String(36)|状态代码
TITLE|NO|String(256)|标题
TYPE_CODE|YES|String(36)|类别代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(36)|工作流标识
