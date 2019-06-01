package cn.web.tl.entity;

/**
 * @author dxq
 * @date 2019-05-29 - 17:09
 */
public class Game {
    /**
     * `gameId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '游戏编号',
     *   `gameName` varchar(50) NOT NULL COMMENT '游戏名称',
     *   `sys` varchar(20) NOT NULL COMMENT '系统分区（安卓或者苹果）',
     *   `partition1` varchar(100) DEFAULT NULL COMMENT '分区1',
     *   `partition2` varchar(100) DEFAULT NULL COMMENT '分区2',
     *   `partition3` varchar(100) DEFAULT NULL COMMENT '分区3',
     *   PRIMARY KEY (`gameId`)
     */
    private Long gameId;
    private String gameName;
    private String sys;
    private String partition1;
    private String partition2;
    private String partition3;

    public Long getGameId() {
        return gameId;
    }

    public void setGameId(Long gameId) {
        this.gameId = gameId;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getSys() {
        return sys;
    }

    public void setSys(String sys) {
        this.sys = sys;
    }

    public String getPartition1() {
        return partition1;
    }

    public void setPartition1(String partition1) {
        this.partition1 = partition1;
    }

    public String getPartition2() {
        return partition2;
    }

    public void setPartition2(String partition2) {
        this.partition2 = partition2;
    }

    public String getPartition3() {
        return partition3;
    }

    public void setPartition3(String partition3) {
        this.partition3 = partition3;
    }
}
