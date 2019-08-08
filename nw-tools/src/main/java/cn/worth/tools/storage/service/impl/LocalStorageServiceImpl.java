package cn.worth.tools.storage.service.impl;

import cn.worth.tools.storage.service.StorageService;
import org.springframework.stereotype.Component;
import java.io.InputStream;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-08-06
 * @description
 **/
@Component
public class LocalStorageServiceImpl implements StorageService {
    @Override
    public String upload(byte[] data, String path) {
        return null;
    }

    @Override
    public String uploadSuffix(byte[] data, String suffix) {
        return null;
    }

    @Override
    public String upload(InputStream inputStream, String path) {
        return null;
    }

    @Override
    public String uploadSuffix(InputStream inputStream, String suffix) {
        return null;
    }
}
