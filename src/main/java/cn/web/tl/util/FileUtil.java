package cn.web.tl.util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

/**
 * @author dxq
 * @date 2019-06-08 - 9:19
 */
public class FileUtil {

    public static String fileUpload(HttpServletRequest request,MultipartFile file){
        if (! file.isEmpty()){
            String fileName = file.getOriginalFilename();
            String suffixName = fileName.substring(fileName.lastIndexOf("."));
            fileName = UUID.randomUUID()+suffixName;
            String path = "C:\\Users\\DXQ\\Desktop\\項目文件\\skyWolf\\src\\main\\resources\\static\\fileUploads";
            File tmpFile = new File(path,fileName);
            if (!tmpFile.getParentFile().exists()) {
                tmpFile.getParentFile().mkdirs();
            }
            try {
                file.transferTo(tmpFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "/fileUploads/" + fileName;
        }
        return null;
    }
}
