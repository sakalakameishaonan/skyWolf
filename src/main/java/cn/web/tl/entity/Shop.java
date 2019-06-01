package cn.web.tl.entity;

import java.util.Date;

/**
 * @author dxq
 * @date 2019-05-29 - 17:13
 */
public class Shop {
    /**
     * DROP TABLE IF EXISTS `shop`;
     *
     * CREATE TABLE `shop` (
     *   `shopId` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '店铺ID,主键自增',
     *   `userId` bigint(11) NOT NULL COMMENT '店主ID,对应user表的userId',
     *   `shopLevel` int(10) NOT NULL COMMENT '店铺等级,对应shopQualification表',
     *   `shopState` int(11) NOT NULL COMMENT '店铺当前状态,1为可接单,0为单已满',
     *   `shopBirthday` date NOT NULL COMMENT '开店时间',
     *   shopname varchar(55) not null COMMENT '商店名称',
     *   PRIMARY KEY (`shopId`)
     * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     */

    private Long shopId;
    private Long userId;
    private Integer shopLevel;
    private Integer shopState;
    private Date shopBirthday;
    private String shopname;

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public Long getShopId() {
        return shopId;
    }

    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Integer getShopLevel() {
        return shopLevel;
    }

    public void setShopLevel(Integer shopLevel) {
        this.shopLevel = shopLevel;
    }

    public Integer getShopState() {
        return shopState;
    }

    public void setShopState(Integer shopState) {
        this.shopState = shopState;
    }

    public Date getShopBirthday() {
        return shopBirthday;
    }

    public void setShopBirthday(Date shopBirthday) {
        this.shopBirthday = shopBirthday;
    }
}
