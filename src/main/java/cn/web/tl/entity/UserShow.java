package cn.web.tl.entity;


/*
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `gender` int(2) DEFAULT NULL COMMENT '性别1为男0为女',
  `age` int(4) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `role` int(2) DEFAULT '0' COMMENT '用户角色编号',
  `name` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `idNum` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `picPath` varchar(255) COLLATE utf8_bin DEFAULT 'img/headImg.png' COMMENT '头像',
  `zPicPath` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证正面照',
  `fPicPath` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证反面照',
  `buyercredit` int(11) DEFAULT NULL COMMENT '买家信誉度',
  `sellercredit` int(11) DEFAULT NULL COMMENT '卖家信誉度',

 */

import java.util.Date;

public class UserShow {
    private Integer id;
    private Integer gender;
    private int age;
    private Date birthday;
    private String createdate;
    private int role;
    private String name;
    private String idNum;
    private String picPath;
    private String zPicPath;
    private String fPicPath;
    private int buyercredit;
    private int sellercredit;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public String getzPicPath() {
        return zPicPath;
    }

    public void setzPicPath(String zPicPath) {
        this.zPicPath = zPicPath;
    }

    public String getfPicPath() {
        return fPicPath;
    }

    public void setfPicPath(String fPicPath) {
        this.fPicPath = fPicPath;
    }

    public int getBuyercredit() {
        return buyercredit;
    }

    public void setBuyercredit(int buyercredit) {
        this.buyercredit = buyercredit;
    }

    public int getSellercredit() {
        return sellercredit;
    }

    public void setSellercredit(int sellercredit) {
        this.sellercredit = sellercredit;
    }
}
