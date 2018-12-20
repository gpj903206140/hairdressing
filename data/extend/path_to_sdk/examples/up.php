<?php
require_once __DIR__ . '/../autoload.php';

use Qiniu\Auth;
use Qiniu\Storage\UploadManager;

$accessKey = 'Access_Key';
$secretKey = 'Secret_Key';
$auth = new Auth($accessKey, $secretKey);

$bucket = 'Bucket_Name';
$token = $auth->uploadToken($bucket);
$uploadMgr = new UploadManager();

//----------------------------------------upload demo1 ----------------------------------------
// 上传字符串到xx
list($ret, $err) = $uploadMgr->put($token, null, 'content string');
echo "\n====> put result: \n";
if ($err !== null) {
    var_dump($err);
} else {
    var_dump($ret);
}


//----------------------------------------upload demo2 ----------------------------------------
// 上传文件到xx
$filePath = './php-logo.png';
$key = 'php-logo.png';
list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
echo "\n====> putFile result: \n";
if ($err !== null) {
    var_dump($err);
} else {
    var_dump($ret);
}


//----------------------------------------upload demo3 ----------------------------------------
// 上传文件到xx后， xx将文件名和文件大小回调给业务服务器.
$policy = array(
    'callbackUrl' => '',
    'callbackBody' => 'filename=$(fname)&filesize=$(fsize)'
//  'callbackBodyType' => 'application/json',                       
//  'callbackBody' => '{"filename":$(fname), "filesize": $(fsize)}'  //设置application/json格式回调
);
$token = $auth->uploadToken($bucket, null, 3600, $policy);


list($ret, $err) = $uploadMgr->putFile($token, null, $key);
echo "\n====> putFile result: \n";
if ($err !== null) {
    var_dump($err);
} else {
    var_dump($ret);
}


//----------------------------------------upload demo4 ----------------------------------------
//上传视频，上传完成后进行m3u8的转码， 并给视频打水印
$wmImg = Qiniu\base64_urlSafeEncode('');
$pfop = "avthumb/m3u8/wmImage/$wmImg";

//转码完成后回调到业务服务器。（公网可以访问，并相应200 OK）
$notifyUrl = '';

//独立的转码队列：
$pipeline = 'abc';

$policy = array(
    'persistentOps' => $pfop,
    'persistentNotifyUrl' => $notifyUrl,
    'persistentPipeline' => $pipeline
);
$token = $auth->uploadToken($bucket, null, 3600, $policy);

list($ret, $err) = $uploadMgr->putFile($token, null, $key);
echo "\n====> putFile result: \n";
if ($err !== null) {
    var_dump($err);
} else {
    var_dump($ret);
}
