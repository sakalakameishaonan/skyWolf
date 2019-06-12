package cn.web.tl.util;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.Properties;

/**
 * @author dxq
 * @date 2019-06-12 - 9:39
 */
@Component
@ConfigurationProperties(prefix = "sftp")
public class SFTPClientUtils {

    private static Logger logger = LoggerFactory.getLogger(SFTPClientUtils.class);

    private ChannelSftp sftp = null;
    private Session sshSession = null;

    /** FTP 登录用户名*/
    private  String username;
    /** FTP 登录密码*/
    private  String password;
    /** FTP 服务器地址IP地址*/
    private String host;
    /** FTP 端口*/
    private int port;

    public SFTPClientUtils() {}

    public SFTPClientUtils(String username, String password, String host, int port) {
        this.username = username;
        this.password = password;
        this.host = host;
        this.port = port;
    }

    public ChannelSftp  connect(){
        try {
            JSch jsch = new JSch();
            //采用指定的端口连接服务器
            sshSession = jsch.getSession(username,host,port);
            //设置登陆主机的密码
            sshSession.setPassword(password);
            Properties sshConfig = new Properties();
            //设置第一次登陆的时候提示，可选值：(ask | yes | no)
            sshConfig.put("StrictHostKeyChecking", "no");
            sshSession.setConfig(sshConfig);
            sshSession.connect();
            //创建sftp通信通道
            ChannelSftp channelSftp = (ChannelSftp)sshSession.openChannel("sftp");
            channelSftp.connect();
            sftp = (ChannelSftp) channelSftp;
        } catch (JSchException e) {
            e.printStackTrace();
        }
        return sftp;
    }

    public static Logger getLogger() {
        return logger;
    }

    public static void setLogger(Logger logger) {
        SFTPClientUtils.logger = logger;
    }

    public ChannelSftp getSftp() {
        return sftp;
    }

    public void setSftp(ChannelSftp sftp) {
        this.sftp = sftp;
    }

    public Session getSshSession() {
        return sshSession;
    }

    public void setSshSession(Session sshSession) {
        this.sshSession = sshSession;
    }

    public  String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }
}
