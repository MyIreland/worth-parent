package cn.worth.thirdparty.file.service;

import cn.worth.thirdparty.file.domain.File;
import com.baomidou.mybatisplus.service.IService;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * <p>
 * 文件上传 服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-11
 */
public interface IFileService extends IService<File> {

    List<File> batchUpload(MultipartFile[] files, String module, String bizType);

    void download(HttpServletResponse response, String fileUrl);

    Boolean add(File file);

    Boolean del(Long id);

    Boolean delBatch(List<Long> ids);
}
