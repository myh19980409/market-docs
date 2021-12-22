## 用户操作
### 注册
#### 请求格式
POST `/register`

```json
{
    "username": "用户名",
    "password": "密码",
}
```

#### 返回格式
HTTP状态码：200成功，同时设置cookies

### 登录
#### 请求格式
POST `/login`

```json
{
    "username": "用户名",
    "password": "密码",
}
```

#### 返回格式
```json
{
    "code": 0,
    "token": "XXXXXXXXXXXXXXXX"
}
```

### 查看个人信息
#### 请求格式
GET `/profile?uid=1001`

携带cookies，参数 `uid` 表示用户id，省略时获取自己的信息

#### 返回格式
```json
{
    "uid": 1001,
    "username": "张三",
    "phone": "13853838438",
    "realname": "张三",
    "class": "0班",
    "sno": "12345678",
    "dormitory": "1号楼 101",
    "gender": "男",
    "createtime": 1640092818,
}
```

查看别人的信息不可见的内容返回空值

### 更新个人信息
#### 请求格式
UPDATE `/profile`

携带cookies

```json
{
    "username": "张三",
    "phone": "13853838438",
    "realname": "张三",
    "class": "0班",
    "sno": "12345678",
    "dormitory": "1号楼 101",
    "gender": "男",
    "createtime": 1640000000,
}
```

#### 返回格式
HTTP状态码，200成功

### 获取用户发布商品列表
GET `/item?uid=1001`

#### 请求格式
携带cookies，参数 `uid` 表示用户id，省略时获取自己发布的商品

暂时不考虑分页，直接返回全部结果即可

#### 返回格式
```json
[
    {
        "id": 114514,
        "uploadtime": 1640000000,
        "name": "",
        "level": 9,
        "remark": "",
        "price": "",
        "sort": "",
        "count": "",
        "display": "",
        "sales": "",
        "uid": 1001,
        "image": "xxxxxxxxxxxxxxxxx.jpg",
    },
    // ...
]
```

- `id`: 主键（商品id）
- `uploadtime`: 上传时间
- `name`: 商品名称
- `level`: 商品成色（几成新）
- `remark`: 商品详细信息
- `price`: 商品价格
- `sort`: 商品类别
- `count`: 商品数量
- `display`: 商品是否被下架
- `sales`: 商品销量
- `uid`: 发表的用户id
- `image`: 商品的图片地址

（其实是复制的）

### 我的收藏
#### 请求格式
GET `/favorite`

携带cookies

#### 返回格式
```json
[
    {
        "id": 114514,
        "uploadtime": 1640000000,
        "name": "",
        "level": 9,
        "remark": "",
        "price": "",
        "sort": "",
        "count": "",
        "display": "",
        "sales": "",
        "uid": 1001,
        "image": "xxxxxxxxxxxxxxxxx.jpg",
    },
    // ...
]
```

（同发布商品列表）

### 购物车
#### 请求格式
GET `/cart`

携带cookies

#### 返回格式
```json
[
    {
        "id": 114514,
        "uploadtime": 1640000000,
        "name": "",
        "level": 9,
        "remark": "",
        "price": "",
        "sort": "",
        "count": "",
        "display": "",
        "sales": "",
        "uid": 1001,
        "image": "xxxxxxxxxxxxxxxxx.jpg",
    },
    // ...
]
```

（同发布商品列表）

## 商品相关

### 获取首页
#### 请求格式
GET `/home`

#### 返回格式
```json
[
    {
        "id": 114514,
        "uploadtime": 1640000000,
        "name": "",
        "level": 9,
        "remark": "",
        "price": "",
        "sort": "",
        "count": "",
        "display": "",
        "sales": "",
        "uid": 1001,
        "image": "xxxxxxxxxxxxxxxxx.jpg",
    },
    // ...
]
```

思考：首页是否需要带 `remark`

### 发布商品
#### 请求格式
POST `/item`
携带cookies，同上，但是只有一个元素，不包含id


```json
{
    "uploadtime": 1640000000,
    "name": "",
    "level": 9,
    "remark": "",
    "price": "",
    "sort": "",
    "count": "",
    "display": "",
    "sales": "",
    "uid": 1001,
    "image": "xxxxxxxxxxxxxxxxx.jpg",
}
```

#### 返回格式
HTTP状态码，200成功，成功后返回发布后的商品id（待商榷）

```json
{
    "id": 114514,
}
```

### 修改商品信息
#### 请求格式
UPDATE `/item`

携带cookies，同上

```json
{
    "id": 114514,
    "uploadtime": 1640000000,
    "name": "",
    "level": 9,
    "remark": "",
    "price": "",
    "sort": "",
    "count": "",
    "display": "",
    "sales": "",
    "uid": 1001,
    "image": "xxxxxxxxxxxxxxxxx.jpg",
}
```

#### 返回格式
HTTP状态码，200成功

### 删除商品
#### 请求格式
DELETE `/item?id=114514`
携带cookies，参数 `id` 表示商品id，不可省略

#### 返回格式
HTTP状态码，200成功

### 搜索
#### 请求格式
GET `/search?q=keyword`

#### 返回格式
```json
[
    {
        "id": 114514,
        "uploadtime": 1640000000,
        "name": "",
        "level": 9,
        "remark": "",
        "price": "",
        "sort": "",
        "count": "",
        "display": "",
        "sales": "",
        "uid": 1001,
        "image": "xxxxxxxxxxxxxxxxx.jpg",
    },
    // ...
]
```

（同获取首页）

### TODO
TODO

## 通用接口
### 上传图片
#### 请求格式
POST `/upload`

body为图片

#### 返回格式
HTTP状态码，200表示成功

```json
{
    "image": "xxxxxxxxxxxxxxxxx.jpg",
}
```
按理说应该有些其他信息但我没想到加啥
