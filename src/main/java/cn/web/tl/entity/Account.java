package cn.web.tl.entity;
/*
`aid` int(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(16) DEFAULT NULL COMMENT '账号',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话号',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `createdate` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `banaccount` int(2) DEFAULT NULL COMMENT '是否禁用1为禁用0为正常',
  `updateaccount` int(2) DEFAULT '0' COMMENT '更改账户1为变更0为未变更',
  `updateaccounttime` timestamp NULL DEFAULT NULL COMMENT '修改账户时间',
  `isDel` int(2) DEFAULT '0' COMMENT '是否删除 1删除0未删除',
  `isDeltime` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  `updatepasswordtime` timestamp NULL DEFAULT NULL COMMENT '修改密码时间',
  `bantime` timestamp NULL DEFAULT NULL COMMENT '封禁时间',
  `banReason` varchar(255) DEFAULT NULL COMMENT '封禁理由',
  `Unblocktime` timestamp NULL DEFAULT NULL COMMENT '解封时间',
  `bansnum` int(11) DEFAULT '0' COMMENT '封禁次数',
  `qqopenid` varchar(255) DEFAULT NULL COMMENT 'qq关联id',
  role 个人信息
  `userid` bigint(20) DEFAULT NULL COMMENT '用户信息关联编号',
 */

import java.util.Date;
import java.util.StringJoiner;

public class Account {
    private int aid;
    private String account;
    private String phone;
    private String password;
    private Date createdate;
    private int banaccount;
    private int updateaccount;
    private Date updateaccounttime;
    private int isDel;
    private Date isDeltime;
    private Date updatepasswordtime;
    private Date bantime;
    private String banReason;
    private Date unblocktime;
    private Integer bansnum;
    private String qqopenid;
    private int role;
    private Integer userid;
    private UserShow userShow;

    public UserShow getUserShow() {
        return userShow;
    }

    public void setUserShow(UserShow userShow) {
        this.userShow = userShow;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public int getBanaccount() {
        return banaccount;
    }

    public void setBanaccount(int banaccount) {
        this.banaccount = banaccount;
    }

    public int getUpdateaccount() {
        return updateaccount;
    }

    public void setUpdateaccount(int updateaccount) {
        this.updateaccount = updateaccount;
    }

    public Date getUpdateaccounttime() {
        return updateaccounttime;
    }

    public void setUpdateaccounttime(Date updateaccounttime) {
        this.updateaccounttime = updateaccounttime;
    }

    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }

    public Date getIsDeltime() {
        return isDeltime;
    }

    public void setIsDeltime(Date isDeltime) {
        this.isDeltime = isDeltime;
    }

    public Date getUpdatepasswordtime() {
        return updatepasswordtime;
    }

    public void setUpdatepasswordtime(Date updatepasswordtime) {
        this.updatepasswordtime = updatepasswordtime;
    }

    public Date getBantime() {
        return bantime;
    }

    public void setBantime(Date bantime) {
        this.bantime = bantime;
    }

    public String getBanReason() {
        return banReason;
    }

    public void setBanReason(String banReason) {
        this.banReason = banReason;
    }

    public Date getUnblocktime() {
        return unblocktime;
    }

    public void setUnblocktime(Date unblocktime) {
        this.unblocktime = unblocktime;
    }

    public Integer getBansnum() {
        return bansnum;
    }

    public void setBansnum(Integer bansnum) {
        this.bansnum = bansnum;
    }

    public String getQqopenid() {
        return qqopenid;
    }

    public void setQqopenid(String qqopenid) {
        this.qqopenid = qqopenid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Account.class.getSimpleName() + "[", "]")
                .add("aid=" + aid)
                .add("account='" + account + "'")
                .add("phone='" + phone + "'")
                .add("password='" + password + "'")
                .add("createdate=" + createdate)
                .add("banaccount=" + banaccount)
                .add("updateaccount=" + updateaccount)
                .add("updateaccounttime=" + updateaccounttime)
                .add("isDel=" + isDel)
                .add("isDeltime=" + isDeltime)
                .add("updatepasswordtime=" + updatepasswordtime)
                .add("bantime=" + bantime)
                .add("banReason='" + banReason + "'")
                .add("unblocktime=" + unblocktime)
                .add("bansnum=" + bansnum)
                .add("qqopenid='" + qqopenid + "'")
                .add("userid=" + userid)
                .add("userShow=" + userShow)
                .toString();
    }
}
