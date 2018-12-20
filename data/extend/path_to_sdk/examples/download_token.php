<?php
require_once __DIR__ . '/../autoload.php';

use Qiniu\Auth;

$accessKey = 'Access_Key';
$secretKey = 'Secret_Key';

// 构建Auth对象
$auth = new Auth($accessKey, $secretKey);

// 私有空间中的外链 
$baseUrl = '';
// 对链接进行签名
$signedUrl = $auth->privateDownloadUrl($baseUrl);

echo $signedUrl;
