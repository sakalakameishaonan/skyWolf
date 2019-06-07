package cn.web.tl.entity;

import java.util.Date;

/**
 * @author FanWeichong
 * @date 2019-06-05 21:31
 * 客服-王者荣耀订单开始审核数据提交
 */
public class OrderStart {
    private long id;//王者荣耀审核记录编号
    private long orderId;//订单编号（对应Order表中的Id）
    private String indexPic;//客户账号首页截图路径
    private String levelPic;//客户账号段位截图路径
    private int golds;//客户账号金币数量
    private int tickets;//客户账号点券数量
    private int diamonds;//客户账号钻石数量
    private Date finishTime;//订单预计完成时间
    private long checkerId;//审核人Id（员工编号）
    private String desc;//备注信息

    private Employee employee;

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

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

    public long getCheckerId() {
        return checkerId;
    }

    public void setCheckerId(long checkerId) {
        this.checkerId = checkerId;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
