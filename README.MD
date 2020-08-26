# rongcloud-ios-imdemo-addtofavorites

rongcloud-ios-imdemo-addtofavorites 是基于融云 IMKit SDK 的收藏功能，使用了融云最新的 4.0 SDK。


# 使用步骤

## 参数配置

开发者需填写 `RCSConfig` 的 `Appkey` 和 `Token`，

[AppKey 获取地址](https://developer.rongcloud.cn/app/appkey/0vMK99Huzz-qw40Ybv4NDA)

[Token 获取地址](https://developer.rongcloud.cn/apitool/Mw8EsJmV43kZBugTMSAZXg)

## 前置条件

新用户默认是空的会话列表，是无法进入会话页面的。开发者可在 [开发者后台 - 服务管理 - API 调用 - 消息服务](https://developer.rongcloud.cn/apitool/kNUDHRczlPHkECa0SJ8X3Q)  中调用对应接口给当前用户发送消息。

发送成功后，接收方的会话列表展示此会话。

## 功能实现

Demo 中实现了长按消息弹出“收藏”按钮，以及长按消息点击“更多”后在底部 Toolbar 中的“收藏”按钮，且预留了点击“收藏”后的回调方法。


# 更多

[融云官网](https://www.rongcloud.cn/)

[融云文档](https://docs.rongcloud.cn/v3/)
