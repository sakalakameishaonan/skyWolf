package cn.web.tl.service.impl;


import cn.web.tl.dao.FileUploadMapper;
import cn.web.tl.entity.UserShow;
import cn.web.tl.service.FileUploadService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class FileUploadServiceImpl implements FileUploadService {

@Resource
private FileUploadMapper fileUploadMapper;
    @Override
    public int update(UserShow user) {
        return fileUploadMapper.update(user);
    }
}
