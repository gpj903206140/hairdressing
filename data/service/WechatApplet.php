<?php
namespace data\service;



class WechatApplet extends User
{

    function __construct()
    {
        parent::__construct();
        
    }
    /**
     * 微信unionid登录(non-PHPdoc)
     * @see \ata\api\IUser::wchatUnionLogin()
     */
    public function wchatAppUnionLogin($unionid)
    {
        $this->Logout();
        $condition = array(
            'wx_unionid' => $unionid
        );
        $user_info = $this->user->getInfo($condition, $field = 'uid,user_status,user_name,is_system,instance_id,is_member, current_login_ip, current_login_time, current_login_type');
        if (! empty($user_info)) {
            if ($user_info['user_status'] == 0) {
                return USER_LOCK;
            } else {
                $this->initLoginInfo($user_info);
                return 1;
            }
        } else
            return USER_NBUND;
    }
    /*
     * 微信第三方登录(non-PHPdoc)
     * @see \data\api\IMember::wchatLogin()
     */
    public function wchatAppLogin($openid)
    {
        $this->Logout();
        $condition = array(
            'wx_openid' => $openid
        );
        $user_info = $this->user->getInfo($condition, $field = 'uid,user_status,user_name,is_system,instance_id,is_member, current_login_ip, current_login_time, current_login_type');
        if (! empty($user_info)) {
            if ($user_info['user_status'] == 0) {
                return USER_LOCK;
            } else {
                
                return $user_info;
            }
        } else
            return USER_NBUND;
        // TODO Auto-generated method stub
    }
}

