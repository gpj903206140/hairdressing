<?php
namespace data\model;

use data\model\BaseModel as BaseModel;

/**
 * 营销游戏表
 */
class NsPromotionGamesModel extends BaseModel
{

    protected $table = 'ns_promotion_games';

    /**
     * 根据game_id和rule_id查询营销游戏奖励详情
     *
     * @param unknown $game_id            
     * @return unknown
     */
    public function getPromotionGamesAwardInfo($game_id, $rule_id)
    {
        // 必须在活动范围之内（结束时间大于当前时间）
        $res = $this->alias('game')
            ->join('ns_promotion_game_rule game_rule', 'game_rule.game_id = game.game_id', 'left')
            ->field('game.game_id,game.name,game.game_type,game_rule.type,game_rule.points,game_rule.hongbao,game_rule.coupon_type_id,game_rule.gift_id,game_rule.rule_id,game.points')
            ->where("game.game_id=$game_id and game_rule.rule_id=$rule_id and game.end_time>" . time())
            ->find();
        return $res;
    }
}