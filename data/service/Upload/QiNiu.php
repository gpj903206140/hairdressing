<?php
namespace data\service\Upload;
require_once 'data/extend/path_to_sdk/autoload.php';
require_once 'data/extend/path_to_sdk/src/Qiniu/Config.php';
require_once 'data/extend/path_to_sdk/src/Qiniu/Storage/BucketManager.php';

use data\service\Upload\UploadParam;
use think\Request;

use data\extend\path_to_sdk\src\Qiniu\Auth;
use data\extend\path_to_sdk\src\Qiniu\Storage\UploadManager;
use Qiniu\Config;
use data\extend\path_to_sdk\src\Qiniu\Storage\BucketManager;
/**
 * 功能说明：xx云存储上传
 */

class QiNiu extends UploadParam{
    function __construct(){
        parent::__construct();
    }

    public function index(){
        //防止默认目录错误
    }
    /**
     * 支付宝基本设置
     * @return unknown
     */
    public function getQiniuConfig(){
         //用于签名的公钥
        $qiniu_config['Accesskey']  = $this->Accesskey;
        //用于签名的私钥
        $qiniu_config['Secretkey']  = $this->Secretkey;
        //存储空间名称
        $qiniu_config['Bucket']     = $this->Bucket;
        //xx用户自定义访问域名
        $qiniu_config['QiniuUrl']   = $this->QiniuUrl;
        return $qiniu_config;
    }
   /**
    * 设置xx参数配置
    * @param unknown $filePath  上传图片路径
    * @param unknown $key 上传到xx后保存的文件名
    */
    public function setQiniuUplaod($filePath, $key){
            $config = $this->getQiniuConfig();
            //Access Key 和 Secret Key
            $accessKey = $config["Accesskey"];
            $secretKey = $config["Secretkey"];
            //构建鉴权对象
            $auth = new Auth($accessKey, $secretKey);
            //要上传的空间
            $bucket = $config["Bucket"];
            $domain = "";
            $token = $auth->uploadToken($bucket);
            // 初始化 UploadManager 对象并进行文件的上传
            $uploadMgr = new UploadManager();
            // 调用 UploadManager 的 putFile 方法进行文件的上传
            list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
            if ($err !== null) {
                return ["code"=>false,"path"=>"","domain"=>"", "bucket"=>""];
            } else {
                //返回图片的完整URL
                return ["code"=>true,"path"=>$this->QiniuUrl."/". $key,"domain"=>$this->QiniuUrl, "bucket"=>$this->Bucket];
            }
    }
    
    /**
     * 删除xx图片
     * @param unknown $key
     */
    public function deleteQiNiuImage($key,$daomin){
        $config = $this->getQiniuConfig();
        //Access Key 和 Secret Key
        $accessKey = $config["Accesskey"];
        $secretKey = $config["Secretkey"];
        //要上传的空间
        $bucket = $config["Bucket"];
        //构建鉴权对象
        $auth = new Auth($accessKey, $secretKey);
        //
        $qiniu_config = new Config();
        //实例化资源管理类
        $bucketManager = new BucketManager($auth, $qiniu_config->zone);
       
        $daomin .= '/';
        $key = str_replace($daomin, '', $key);
        
        $err = $bucketManager->delete($bucket, $key);

        if($err == null){
            return array('code' => 1, 'message' => '删除成功');
        }else{
            return array('code' => 0, 'message' => $err->message());
        }   
    }
}