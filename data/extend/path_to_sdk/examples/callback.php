<?php
require_once __DIR__ . '/../autoload.php';

use Qiniu\Auth;

$accessKey = 'Access_Key';
$secretKey = 'Secret_Key';
$auth = new Auth($accessKey, $secretKey);

//获取回调的body信息
$callbackBody = file_get_contents('php://input');

//回调的contentType
$contentType = 'application/x-www-form-urlencoded';

//回调的签名信息，可以验证该回调是否来自xx
$authorization = $_SERVER['HTTP_AUTHORIZATION'];
$url = '';

$isQiniuCallback = $auth->verifyCallback($contentType, $authorization, $url, $callbackBody);

if ($isQiniuCallback) {
    $resp = array('ret' => 'success');
} else {
    $resp = array('ret' => 'failed');
}

echo json_encode($resp);
