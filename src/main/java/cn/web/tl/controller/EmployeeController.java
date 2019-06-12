package cn.web.tl.controller;

import cn.web.tl.entity.Employee;
import cn.web.tl.service.EmployeeService;
import cn.web.tl.util.Constants;
import cn.web.tl.util.FileUtil;
import cn.web.tl.util.SFTPClientUtils;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.SftpException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

@Controller
@RequestMapping("/sys")
public class EmployeeController {

    @Resource
    private EmployeeService service;
    @Autowired
    private SFTPClientUtils sftpClientUtils;

    private Logger logger = LoggerFactory.getLogger(EmployeeController.class);

    @RequestMapping(value = "/main")
    public String log(){
        return "/admin/main";
    }

    @RequestMapping(value = "/toCenter")
    public String toCenter(HttpSession session, Model model){
        Employee employee = (Employee) session.getAttribute(Constants.USER_SESSION);
        model.addAttribute("employee",employee);
        return "/admin/userCenter";
    }

    @PostMapping(value = "/doUpdateEmp")
    public String doUpdateEmp(Employee employee,HttpSession session, HttpServletRequest request,
                              @RequestParam(value = "headimg1", required = false)MultipartFile attach,
                                Model model){

        SFTPClientUtils sftp = new SFTPClientUtils("ubuntu","Xia1396128", "129.28.176.18", 22);
        ChannelSftp channel = sftp.connect();
        try {
            channel.cd("/uploadfiles");
            String path = "http://129.28.176.18/uploadfiles/";
            String of = attach.getOriginalFilename();
            String suffixName = of.substring(of.lastIndexOf("."));
            of = UUID.randomUUID()+suffixName;
            InputStream inputStream = attach.getInputStream();
            channel.put(inputStream,of);
            String address = path+of;
            channel.disconnect();
            channel.quit();
            employee.setHeadimg(address);
        } catch (SftpException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        int i = service.updateEmp(employee);
        return "/admin/userCenter";
    }
}
