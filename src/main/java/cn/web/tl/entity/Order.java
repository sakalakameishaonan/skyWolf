package cn.web.tl.entity;

import java.util.Date;

/**
 * @author dxq
 * @date 2019-05-29 - 8:33
 */
public class Order {

    /**
     * CREATE TABLE `user_order` (
     *   `id` bigint(20) DEFAULT NULL COMMENT '订单编号',
     *   `shopId` bigint(20) DEFAULT NULL COMMENT '店铺编号',
     *   `userId` bigint(20) DEFAULT NULL COMMENT '用户编号',
     *   `telephone` varchar(20) DEFAULT NULL COMMENT '预留手机号',
     *   `gameId` int(11) DEFAULT NULL COMMENT '游戏种类',
     *   `begin` varchar(50) DEFAULT NULL COMMENT '开始段位',
     *   `end` varchar(50) DEFAULT NULL COMMENT '结束段位',
     *   `gAccount` varchar(50) DEFAULT NULL COMMENT '游戏账号',
     *   `gPassword` varchar(50) DEFAULT NULL COMMENT '游戏密码',
     *   `price` double(10,2) DEFAULT NULL COMMENT '代练费用',
     *    `orderdate` datetime DEFAULT NULL COMMENT '下单时间',
     *   `overtime` datetime DEFAULT NULL COMMENT '完成时间',
     *   `desc` varchar(200) DEFAULT NULL COMMENT '备注（金币、点券、钻石等）',
     *   `state` int(11) DEFAULT NULL COMMENT '0-未下单；1-已下单'
     * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     */

    private Long id;
    private Long shopId;
    private Long userId;
    private String telephone;
    private String begin;
    private Integer gameId;
    private String end;
    private String gaccount;
    private String gpassword;
    private Double price;
    private Date overtime;
    private String desc;
    private String state;
    private Date orderDate;

    private Game game;
    private Shop shop;
    private UserShow userShow;
    private OrderStart orderStart;
    private OrderEnd orderEnd;


    public OrderStart getOrderStart() {
        return orderStart;
    }

    public void setOrderStart(OrderStart orderStart) {
        this.orderStart = orderStart;
    }

    public OrderEnd getOrderEnd() {
        return orderEnd;
    }

    public void setOrderEnd(OrderEnd orderEnd) {
        this.orderEnd = orderEnd;
    }

    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }


    public UserShow getUserShow() {
        return userShow;
    }

    public void setUserShow(UserShow userShow) {
        this.userShow = userShow;
    }



    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getBegin() {
        return begin;
    }

    public void setBegin(String begin) {
        this.begin = begin;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public String getGaccount() {
        return gaccount;
    }

    public void setGaccount(String gaccount) {
        this.gaccount = gaccount;
    }

    public String getGpassword() {
        return gpassword;
    }

    public void setGpassword(String gpassword) {
        this.gpassword = gpassword;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getOvertime() {
        return overtime;
    }

    public void setOvertime(Date overtime) {
        this.overtime = overtime;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
}
