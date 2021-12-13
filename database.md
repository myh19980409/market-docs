## 一、数据字典的设计

### 1、用户真实信息表

|   字段名   |  字段类型   | 是否可为空 |      备注      |
| :--------: | :---------: | :--------: | :------------: |
|     Id     |     int     |     否     | 主键（用户id） |
|            |             |            |                |
|  Username  | Varchar(50) |     否     |    用户昵称    |
|   Phone    |  Char(11)   |     否     |  用户手机号码  |
|  RealName  | Varchar(20) |     否     |  用户真实姓名  |
|   Clazz    | Varchar(20) |     是     |  用户所在班级  |
|    Sno     |  Char(13)   |     否     |    用户学号    |
| Dormitory  | Varchar(20) |     是     |     宿舍号     |
|   Gender   |   Char(2)   |     是     |      性别      |
| Createtime |  Datetime   |     是     |    创建时间    |
|            |             |            |                |

### 2、校内学生信息

| 字段名 |  字段类型   | 是否可为空 |   备注   |
| :----: | :---------: | :--------: | :------: |
|  sno   |  Char(12)   |     否     |   主键   |
|  name  | Varchar(20) |     否     | 学生姓名 |

### 3、用户登录信息表

|  字段名  |  字段类型   | 是否可为空 |      备注      |
| :------: | :---------: | :--------: | :------------: |
|    Id    | Varchar(20) |     否     | 主键（用户名） |
|          |             |            |                |
| Password | Varchar(24) |     否     |    用户密码    |
|   Uid    |     int     |     否     |     用户id     |



### 4、商品表

|   字段名   |   字段类型    | 是否可为空 |        备注        |
| :--------: | :-----------: | :--------: | :----------------: |
|     Id     |      int      |     否     |   主键（商品id）   |
| Uploadtime |   Datetime    |     是     |      上传时间      |
|    Name    |  Varchar(50)  |     否     |      商品名称      |
|   Level    |      Int      |     否     | 商品成色（几成新） |
|   Remark   | Varchar(255)  |     是     |    商品详细信息    |
|   Price    | Decimal(0.00) |     否     |      商品价格      |
|    Sort    |      Int      |     否     |      商品类别      |
|   Count    |      Int      |     否     |      商品数量      |
|  Display   |      Int      |     否     |   商品是否被下架   |
|            |               |            |                    |
|   Sales    |      Int      |     否     |      商品销量      |
|    Uid     |      int      |     否     |    发表的用户id    |
|   Image    | Varchar(255)  |     否     |   商品的图片地址   |

### 5、商品留言

| 字段名  |   字段类型   | 是否可为空 |      备注      |
| :-----: | :----------: | :--------: | :------------: |
|   Id    |     Int      |     否     | 主键（留言id） |
| Modify  |   Datetime   |     是     |    评论时间    |
|   Gid   |     int      |     否     |  评论的商品id  |
| Content | Varchar(122) |     否     |    留言内容    |
| Display |     Int      |     否     |    是否可见    |
|   Uid   |     int      |     否     |  评论的用户id  |

### 6、我的收藏

| 字段名  | 字段类型 | 是否可为空 |        备注        |
| :-----: | :------: | :--------: | :----------------: |
|   Id    |   Int    |     否     | 主键（收藏的id号） |
| Modify  | Datetime |     是     |      收藏时间      |
|   Gid   |   int    |     否     |      商品的id      |
| Display |   Int    |     否     |      是否可见      |
|         |          |            |                    |

### 7、求购商品  

|   字段名    |   字段类型    | 是否可为空 |          备注          |
| :---------: | :-----------: | :--------: | :--------------------: |
|     Id      |    Int(11)    |     否     |     主键（求购id）     |
|   Modify    |   Datetime    |     是     |        发布时间        |
|    Name     |  Varchar(50)  |     否     |      求购商品名称      |
|   Remark    | Varchar(255)  |     是     |      求购商品详情      |
|    Price    | Decimal(0.00) |     否     |      求购商品价格      |
|    Sort     |      Int      |     否     |      求购商品类别      |
|    Count    |      Int      |     否     |      求购商品数量      |
|   Display   |      Int      |     否     |     信息是否被删除     |
| Transaction |      Int      |     否     | 交易方式（线上或线下） |
|     Uid     |      Int      |     否     |      发表的用户id      |
|    Image    | Varchar(255)  |     否     |     商品的图片地址     |

### 8、求购商品留言  

| 字段名  |   字段类型   | 是否可为空 |        备注        |
| :-----: | :----------: | :--------: | :----------------: |
|   Id    |   Int(11)    |     否     | 主键（留言的id号） |
| Modify  |   Datetime   |     是     |      留言时间      |
|   Qid   |     Int      |     否     |    求购商品的id    |
| Content | Varchar(122) |     否     |      留言内容      |
| Display |     Int      |     否     |      是否可见      |
|   Uid   |     Int      |     否     |    评论的用户id    |

### 9、我发布的商品  

| 字段名  | 字段类型 | 是否可为空 |          备注          |
| :-----: | :------: | :--------: | :--------------------: |
|   Id    | Int(11)  |     否     | 主键（发布商品的id号） |
| Modify  | Datetime |     是     |        发布时间        |
| Display |   Int    |     否     |       是否被删除       |
|   Uid   |   Int    |     否     |         用户id         |
|   Gid   |   Int    |     否     |       对应商品id       |

### 9、我求购的商品  

| 字段名  | 字段类型 | 是否可为空 |    备注    |
| :-----: | :------: | :--------: | :--------: |
|   Id    |   Int    |     否     |    主键    |
| Modify  | Datetime |     是     |  发布时间  |
| Display |   Int    |     否     | 是否被删除 |
|   Uid   |   Int    |     否     |   用户id   |
|   Qid   |   Int    |     否     | 求购商品id |

### 10、已购买的商品  

|  字段名  | 字段类型 | 是否可为空 |   备注   |
| :------: | :------: | :--------: | :------: |
|    Id    | Int(11)  |     否     |   主键   |
|  Modify  | Datetime |     是     | 修改时间 |
|          |          |            |          |
|   Uid    |   Int    |     否     |  用户id  |
|   Gid    |   Int    |     否     |  商品id  |
| Quantity |   Int    |     否     | 商品数量 |

### 11、购物车  

|  字段名  |  字段类型   | 是否可为空 |   备注   |
| :------: | :---------: | :--------: | :------: |
|    Id    | Varchar(20) |     否     |   主键   |
|  Modify  |  Datetime   |     是     | 添加时间 |
|          |             |            |          |
|   Uid    |     Int     |     否     |  用户id  |
|   Gid    |     Int     |     否     |  商品id  |
| Quantity |     Int     |     否     | 商品数量 |