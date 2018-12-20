<?php
require_once __DIR__ . '/../autoload.php';

use Qiniu\Auth;
use Qiniu\Processing\PersistentFop;

// 去我们的portal 后台来获取AK, SK
$accessKey = 'Access_Key';
$secretKey = 'Secret_Key';
$auth = new Auth($accessKey, $secretKey);


$bucket = 'Bucket_Name';
$key = '1.png';

// 异步任务的队列， 去后台新建： 
$pipeline = 'pipeline_name';

$pfop = new PersistentFop($auth, $bucket, $pipeline);

// 进行zip压缩的url
$url1 = '';
$url2 = '';

//压缩后的key
$zipKey = 'test.zip';

$fops = 'mkzip/2/url/' . \Qiniu\base64_urlSafeEncode($url1);
$fops .= '/url/' . \Qiniu\base64_urlSafeEncode($url2);
$fops .= '|saveas/' . \Qiniu\base64_urlSafeEncode("$bucket:$zipKey");

list($id, $err) = $pfop->execute($key, $fops);

echo "\n====> pfop mkzip result: \n";
if ($err != null) {
    var_dump($err);
} else {
    echo "PersistentFop Id: $id\n";
    
    $res = "";
    echo "Processing result: $res";
}
