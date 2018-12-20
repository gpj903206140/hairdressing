<?php
/**
 * 后台登录控制器
 */
namespace app\wap\controller;

use data\service\Config;
use data\service\Events;
use data\service\Upgrade;
use data\service\WebSite;
use think\Cache;
use think\Controller;
use data\service\Notice;
use data\service\Verification;
\think\Loader::addNamespace('data', 'data/');

/**
 * 执行定时任务
 *
 * @author Administrator
 *        
 */
class Task extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 加载执行任务
     */
    public function load_task()
    {
        $this->autoTask();
        $this->minutesTask();
        $this->hoursTask();
    }

    /**
     * 立即执行事件
     */
    public function autoTask()
    {
        $event = new Events();
        $retval_mansong_operation = $event->mansongOperation();
        $retval_discount_operation = $event->discountOperation();
        $retval_auto_coupon_close = $event->autoCouponClose();

        // 营销游戏变化活动状态
        $notice = new Notice();
        $notice->sendNoticeRecords();
        
    }

    /**
     * 每分钟执行事件
     */
    public function minutesTask()
    {
        $time = time() - 60;
        $cache = Cache::get("newshop_minutes_task");
        if (! empty($cache) && $time < $cache) {
            return 1;
        } else {
            $event = new Events();
            $retval_order_close = $event->ordersClose();
            $retval_order_complete = $event->ordersComplete();
            Cache::set("newshop_minutes_task", time());
            return 1;
        }
    }

    /**
     * 每小时执行事件
     */
    public function hoursTask()
    {
        $time = time() - 60;
        $cache = Cache::get("newshop_hours_task");
        if (! empty($cache) && $time < $cache) {
            return 1;
        } else {
            $event = new Events();
            $retval_order_autodeilvery = $event->autoDeilvery();
            Cache::set("newshop_hours_task", time());
            return 1;
        }
    }

    /**
     * 当前用户是否授权
     */
    public function copyRightIsLoad()
    {
        $upgrade = new Upgrade();
        $is_load = $upgrade->isLoadCopyRight();
        $website = new WebSite();
        $web_site_info = $website->getWebSiteInfo();
        $result = array(
            "is_load" => $is_load
        );
        $bottom_info = array();
        if ($is_load == 0) {
            $config = new Config();
            $bottom_info = $config->getCopyrightConfig(0);
            $bottom_info["copyright_logo"] = $bottom_info["copyright_logo"];
        }
        if (! empty($web_site_info["web_icp"])) {
            $bottom_info['copyright_meta'] = $web_site_info["web_icp"];
        } else {
            $bottom_info['copyright_meta'] = '';
        }
        $bottom_info['web_gov_record'] = $web_site_info["web_gov_record"];
        $bottom_info['web_gov_record_url'] = $web_site_info["web_gov_record_url"];
        
        $result["bottom_info"] = $bottom_info;
        $result["default_logo"] = "/blue/img/logo.png";
        return $result;
    }
}