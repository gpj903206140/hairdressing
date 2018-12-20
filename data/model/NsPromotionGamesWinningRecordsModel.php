<?php
namespace data\model;

use data\model\BaseModel as BaseModel;

/**
 * 会员游戏次数获取表
 */
class NsPromotionGamesWinningRecordsModel extends BaseModel
{

    protected $table = 'ns_promotion_games_winning_records';

    /**
     * 获取用户的中奖记录
     *
     * @param unknown $page_index            
     * @param unknown $page_size            
     * @param unknown $condition            
     * @param unknown $order            
     * @return unknown
     */
    public function getUserPromotionGamesWinningRecordsViewList($page_index, $page_size, $condition, $order)
    {
        $queryList = $this->getUserPromotionGamesWinningRecordsViewQuery($page_index, $page_size, $condition, $order);
        $queryCount = $this->getUserPromotionGamesWinningRecordsViewCount($condition);
        $list = $this->setReturnList($queryList, $queryCount, $page_size);
        return $list;
    }

    /**
     * 获取列表
     *
     * @param unknown $page_index            
     * @param unknown $page_size            
     * @param unknown $condition            
     * @param unknown $order            
     * @return \data\model\multitype:number
     */
    public function getUserPromotionGamesWinningRecordsViewQuery($page_index, $page_size, $condition, $order)
    {
        $viewObj = $this->alias('np_pgwr')
            ->join('ns_promotion_games npg', 'np_pgwr.game_id = npg.game_id', 'left')
            ->field('np_pgwr.*,npg.name,npg.points as consumption_integral');
        $list = $this->viewPageQuery($viewObj, $page_index, $page_size, $condition, $order);
        return $list;
    }

    /**
     * 获取列表数量
     *
     * @param unknown $condition            
     * @return \data\model\unknown
     */
    public function getUserPromotionGamesWinningRecordsViewCount($condition)
    {
        $viewObj = $this->alias('np_pgwr')
            ->join('ns_promotion_games npg', 'np_pgwr.game_id = npg.game_id', 'left')
            ->field('np_pgwr.id');
        $count = $this->viewCount($viewObj, $condition);
        return $count;
    }
}