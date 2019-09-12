package cn.worth.thirdparty.file.controller;

import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.StringUtils;
import cn.worth.thirdparty.file.domain.File;
import cn.worth.thirdparty.file.service.IFileService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * <p>
 * 文件上传 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-11
 */
@RestController
@RequestMapping("file")
public class FileController extends BaseController<IFileService, File> {

    @Autowired
    private IFileService fileService;
    /**
     * 多文件上传
     *
     * @param files
     * @param bizType
     * @return
     */
    @PostMapping("batchUpload")
    public R batchUpload(MultipartFile[] files, String module, String bizType) {

        return R.success(fileService.batchUpload(files, module, bizType));
    }

    /**
     * 文件下载
     * @param response
     * @param fileUrl
     */
    @GetMapping("download")
    public void download(HttpServletResponse response, String fileUrl) {
        fileService.download(response, fileUrl);
    }

    /**
     * 分页查询信息
     *
     * @return 分页对象
     */
    @PostMapping("page")
    public R page(Page<File> entityPage, File file) {
        EntityWrapper<File> wrapper = new EntityWrapper<>();
        String bizType = file.getBizType();
        Integer type = file.getType();
        if(StringUtils.isNoneBlank(bizType)){
            wrapper.eq("biz_type", bizType);
        }
        if(null != type){
            wrapper.eq("type", type);
        }
        Page<File> page = selectPage(entityPage, wrapper);
        return R.success(page);
    }

    /**
     * 添加
     *
     * @param file 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody File file) {
        return new R<>(fileService.add(file));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> del(@PathVariable Long id) {
        return new R<>(fileService.del(id));
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return success/false
     */
    @PostMapping("delBatch")
    public R<Boolean> delBatch(@RequestBody List<Long> ids) {
        return new R<>(fileService.delBatch(ids));
    }
}
