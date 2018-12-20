<?php
require_once __DIR__ . '/../autoload.php';

use Qiniu\Auth;

// 用于签名的公钥和私钥. 
$accessKey = 'Access_Key';
$secretKey = 'Secret_Key';

// 初始化签权对象。
$auth = new Auth($accessKey, $secretKey);
