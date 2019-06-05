package cn.web.tl.entity;

import java.util.Date;

/**
 * @author FanWeichong
 * @date 2019-06-05 17:34
 * 客服-王者荣耀审核数据提交
 */
public class CheckWZ {
    private long id;//王者荣耀审核记录编号
    private long orderId;//订单编号（对应Order表中的Id）
    private String indexPic;//客户账号首页截图路径
    private String levelPic;//客户账号段位截图路径
    private int golds;//客户账号金币数量
    private int tickets;//客户账号点券数量
    private int diamonds;//客户账号钻石数量
    private Date finishTime;//订单预计完成时间
    private Date factTime;//订单实际完成时间（status为1时，才有数据）
    private long checkerId;//审核人Id（员工编号）
    private int status;//0-订单开始，1-订单完成

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public String getIndexPic() {
        return indexPic;
    }

    public void setIndexPic(String indexPic) {
        this.indexPic = indexPic;
    }

    public String getLevelPic() {
        return levelPic;
    }

    public void setLevelPic(String levelPic) {
        this.levelPic = levelPic;
    }

    public int getGolds() {
        return golds;
    }

    public void setGolds(int golds) {
        this.golds = golds;
    }

    public int getTickets() {
        return tickets;
    }

    public void setTickets(int tickets) {
        this.tickets = tickets;
    }

    public int getDiamonds() {
        return diamonds;
    }

    public void setDiamonds(int diamonds) {
        this.diamonds = diamonds;
    }

    public Date getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }

    public Date getFactTime() {
        return factTime;
    }

    public void setFactTime(Date factTime) {
        this.factTime = factTime;
    }

    public long getCheckerId() {
        return checkerId;
    }

    public void setCheckerId(long checkerId) {
        this.checkerId = checkerId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
