<?php
// 检测PHP环境
if (version_compare(PHP_VERSION, '5.4.0', '<'))
    die('require PHP > 5.4.0 !');

// [ 应用入口文件 ]
define('INTERCALATE',"public/admin/set.txt"); //二级分销设置
define('HTTP_URL',"javascript:;"); //{$Think.HTTP_URL}
define('ADMINID',59); 
define('LEVEL',2); 
define('TGY_NUMBER_QZ','ZBH');   //推广员编号前缀
// 定义应用目录
define('APP_PATH', __DIR__ . '/application/');
// 加载框架引导文件
require __DIR__ . '/thinkphp/start.php';


