package cn.web.tl.controller;


import cn.web.tl.entity.UserShow;
import cn.web.tl.service.FileUploadService;
import cn.web.tl.util.Constants;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;

@Controller
public class FileUploadController {

    private FileUploadService fileUploadService;
    @RequestMapping(value = "/fileUpLoad", method = RequestMethod.POST)
    public String fileUpLoad(UserShow user, HttpSession session, HttpServletRequest request,
                              @RequestParam(value = "fileImg", required = false) MultipartFile[] attachs) {
        String picPath1 = null;
        String picPath2 = null;
        String errorInfo = null;
        boolean flag = true;
        String path = request.getSession().getServletContext().getRealPath("statics" + File.separator + "uploadfiles");

        for (int i = 0; i < attachs.length; i++) {
            MultipartFile attach = attachs[i];
            if (!attach.isEmpty()) {
                if (i == 0) {
                    errorInfo = "uploadFileError";
                } else if (i == 1) {
                    errorInfo = "uploadWpError";
                }
                String oldFileName = attach.getOriginalFilename();// 原文件名

                String prefix = FilenameUtils.getExtension(oldFileName);// 原文件后缀

                int filesize = 500000;

                if (attach.getSize() > filesize) {// 上传大小不得超过 500k
                    request.setAttribute(errorInfo, " * 上传大小不得超过 500k");
                    flag = false;
                } else if (prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png")
                        || prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg")) {// 上传图片格式不正确
                    String fileName = System.currentTimeMillis() + RandomUtils.nextInt(0,1000000000) + "_Personal.jpg";

                    File targetFile = new File(path, fileName);

                    if (!targetFile.exists()) {
                        targetFile.mkdirs();
                    }
                    // 保存
                    try {
                        attach.transferTo(targetFile);
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute(errorInfo, " * 上传失败！");
                        flag = false;
                    }
                    if (i == 0) {
                        picPath1 = path + File.separator + fileName;
                    } else if (i == 1) {
                        picPath2 = path + File.separator + fileName;
                    }

                } else {
                    request.setAttribute(errorInfo, " * 上传图片格式不正确");
                    flag = false;
                }
            }
        }
        if (flag) {
            user.setId(((UserShow) session.getAttribute(Constants.USER_SESSION)).getId());
            user.setBirthday(new Date());
            user.setzPicPath(picPath1);
            user.setfPicPath(picPath2);
            if (fileUploadService.update(user)>0) {
                return "redirect:/user/userlist.html";
            }
        }
        return "useradd";
    }

}
