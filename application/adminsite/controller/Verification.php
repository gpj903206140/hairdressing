<?php
namespace app\adminsite\controller;

use data\service\Verification as VerificationService;
use data\service\Member as MemberService;
/**
 * 核销管理
 */
class Verification extends BaseController
{

    public function __construct()
    {
        parent::__construct();
    }
    
    /**
     * 核销人员列表
     */
    public function index()
    {
        if(request()->isAjax()){
            $verification = new VerificationService();
            $page_index = request() -> post('page_index', 1);
            $page_size = request() -> post('page_size', PAGESIZE);
            $list = $verification -> getVerificationPersonnelList($page_index, $page_size, "", "");
            return $list;
        }
        $child_menu_list = array();
        $child_menu_list[0] = array(
            'url' => "Verification/index",
            'menu_name' => '核销人员',
            "active" => 1
        );
        $child_menu_list[1] = array(
            'url' => "Verification/virtualGoodsVerificationList?type=to_reply",
            'menu_name' => '核销记录',
            "active" => 0
        );
        $this->assign('child_menu_list', $child_menu_list);
        return view($this->style. 'Verification/index');
    }
    
    
    /**
     * 获取用户列表
     */
    public function getMemberList(){
        if(request()->isAjax()){
            $search_text = request() -> post("search_text", "");
            $v_id = request()-> post("v_id", "");
            $member = new MemberService();
            $condition = [
                'su.is_member' => 1,
                'su.nick_name|su.user_tel|su.user_email' => array(
                    'like',
                    '%' . $search_text . '%'
                ),
                'su.is_system' => 0,
                'su.uid' => array(
                    'not in', $v_id
                )
            ];
            $list = $member -> getMemberList(1, 0, $condition);
            return $list;
        }
    }
    
    /**
     * 添加核销人员
     */
    public function addVerificationPerson(){
        $verification = new VerificationService();
        $uid = request()->post("uid", "");
        $res = $verification -> addVerificationPersonne($uid, $this->instance_id);
        return AjaxReturn($res);
    }
    
    /**
     * 删除核销人员
     * @return number
     */
    public function deleteVerificationPerson(){
        $verification = new VerificationService();
        $vid = request()->post("vid", "");
        $res = $verification -> deleteVerificationPerson($vid);
        return AjaxReturn($res);
    }
    
    
    /**
     * 核销
     * @return number
     */
    public function verificationVirtualGoods(){
        $virtual_goods_id = request()->post("virtual_goods_id", 0);
        $uid = $this->uid;
        $verification = new VerificationService();
        $res = $verification -> verificationVirtualGoods($uid, $virtual_goods_id, true);
        return AjaxReturn($res);
    }
    
    
    /**
     * 核销记录
     * @return number
     */
    public function virtualGoodsVerificationList(){
        
        if(request()->isAjax())
        {
            $verification = new VerificationService();
            $page_index = request()->post('page_index', 1);
            $page_size = request()->post('page_size', PAGESIZE);
            $search_name = request()->post('search_name', '');
            $condition = array();
            if($search_name != ''){
                $condition["goods_name"] = array(
                    'like',
                    '%' . $search_name . '%'
                );
            }
            $order = "";
            $list = $verification -> getVirtualGoodsVerificationList($page_index , $page_size, $condition , $order);
            return $list;
        }
        
        $type = request()->get('type', '');
        $child_menu_list = array();
        $child_menu_list[0] = array(
            'url' => "Verification/index",
            'menu_name' => '核销人员',
            "active" => 0
        );
        $child_menu_list[1] = array(
            'url' => "Verification/virtualGoodsVerificationList?type=to_reply",
            'menu_name' => '核销记录',
            "active" => 1
        );
        $this->assign('child_menu_list', $child_menu_list);
        
        return view($this->style. "Verification/virtualGoodsVerificationList");
    }    
    
    
    
    
    
    
    
    
}