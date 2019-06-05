package cn.web.tl.entity;

/**
 * @author FanWeichong
 * @date 2019-06-05 17:29
 * 客服-订单审核表
 */
public class OrderCheck {
    private long id;//订单审核记录编号
    private long orderId;//订单编号(对应Order表的Id)
    private String desc;//描述：审核不通过的原因
    private int status;//0-处理中，1-审核通过，2-审核不通过

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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
