# Qiniu Resource Storage SDK for PHP
[![doxygen.io]()]()
[![Software License]()](LICENSE)
[![Build Status]()]()
[![Latest Stable Version]()]()
[![Total Downloads]()]()
[![Scrutinizer Code Quality]()]()
[![Code Coverage]()]()
[![Join Chat]()]()
[![@qiniu on weibo]()]()

## 安装

* 通过composer，这是推荐的方式，可以使用composer.json 声明依赖，或者运行下面的命令。SDK 包已经放到这里 [`qiniu/php-sdk`][install-packagist] 。
```bash
$ composer require qiniu/php-sdk
```
* 直接下载安装，SDK 没有依赖其他第三方库，但需要参照 composer的autoloader，增加一个自己的autoloader程序。

## 运行环境

| Qiniu SDK版本 | PHP 版本 |
|:--------------------:|:---------------------------:|
|          7.x         |  cURL extension,   5.3 - 5.6,7.0 |
|          6.x         |  cURL extension,   5.2 - 5.6 |

## 使用方法

### 上传
```php
use Qiniu\Storage\UploadManager;
use Qiniu\Auth;
...
    $upManager = new UploadManager();
    $auth = new Auth($accessKey, $secretKey);
    $token = $auth->uploadToken($bucketName);
    list($ret, $error) = $upManager->put($token, 'formput', 'hello world');
...
```



## 代码贡献

详情参考[代码提交指南]()。

## 贡献记录



[packagist]: 
[install-packagist]: 
