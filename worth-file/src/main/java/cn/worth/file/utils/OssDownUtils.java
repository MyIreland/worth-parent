package cn.worth.file.utils;

import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.ZipOutputStream;

import cn.worth.file.config.OssProperties;
import com.aliyun.oss.OSS;
import com.aliyun.oss.model.GetObjectRequest;
import com.aliyun.oss.model.OSSObject;
import com.xiaoleilu.hutool.io.IoUtil;
import com.xiaoleilu.hutool.util.CharsetUtil;
import com.xiaoleilu.hutool.util.URLUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-10-29
 * @description
 **/
@Component
@Slf4j
public class OssDownUtils {
    private static OssProperties ossProps;

    private static OSS ossInnerClient;

    @Autowired
    public OssDownUtils(OSS ossInnerClient, OssProperties ossProps) {
        OssDownUtils.ossInnerClient = ossInnerClient;
        OssDownUtils.ossProps = ossProps;
    }

    /**
     * 下载oss文件到本地
     *
     * @param ossFile   oss文件的路径
     * @param localFile 本地存储的路径
     */
    public static void downFile(String ossFile, String localFile) {
        // 下载OSS文件到本地文件。如果指定的本地文件存在会覆盖，不存在则新建。
        ossInnerClient.getObject(new GetObjectRequest(ossProps.getBucketName(), ossFile), new File(localFile));
    }


    /**
     * 下载多个oss文件并进行压缩
     *
     * @param ossFiles oss 文件的路径
     * @return 压缩后的二进制
     */
    public static byte[] writeZip(List<String> ossFiles) {

        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipOutputStream zip = new ZipOutputStream(outputStream);
        for (String ossFile : ossFiles) {
            OSSObject ossObject = ossInnerClient.getObject(ossProps.getBucketName(), ossFile);
            InputStream in = ossObject.getObjectContent();
            byte[] bytes = IoUtil.readBytes(in);
            IoUtil.write(zip, CharsetUtil.UTF_8, false, bytes);
        }
        IoUtil.close(zip);
        return outputStream.toByteArray();
    }

    /**
     * 下载单个oss文件并进行压缩
     *
     * @param ossFile oss文件的路径
     * @return 压缩后的二进制
     */
    public static byte[] writeZip(String ossFile) {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipOutputStream zip = new ZipOutputStream(outputStream);
        OSSObject ossObject = ossInnerClient.getObject(ossProps.getBucketName(), ossFile);
        InputStream in = ossObject.getObjectContent();
        byte[] bytes = IoUtil.readBytes(in);
        IoUtil.write(zip, CharsetUtil.UTF_8, true, bytes);
        return outputStream.toByteArray();
    }

    /**
     * 输出到客户端
     *
     * @param response 输出的流
     * @param fileName 输出的文件名
     * @param ossFile  oss文件的路径
     * @throws IOException
     */
    public static void writeZip(HttpServletResponse response, String fileName, String ossFile) throws IOException {
        byte[] bytes = writeZip(ossFile);
        // 数据读取完成后，获取的流必须关闭，否则会造成连接泄漏，导致请求无连接可用，程序无法正常工作。
        response.reset();
        response.setContentType("application/octet-stream; charset=utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=" + URLUtil.encode(fileName));
        IoUtil.write(response.getOutputStream(), Boolean.TRUE, bytes);
    }

    /**
     * 输出到客户端
     *
     * @param response 输出的流
     * @param fileName 输出的文件名
     * @param ossFile  oss文件的路径
     * @throws IOException
     */
    public static void write(HttpServletResponse response, String fileName, String ossFile) throws IOException {
        OSSObject ossObject = ossInnerClient.getObject(ossProps.getBucketName(), ossFile);
        InputStream in = ossObject.getObjectContent();
        byte[] bytes = IoUtil.readBytes(in);
        // 数据读取完成后，获取的流必须关闭，否则会造成连接泄漏，导致请求无连接可用，程序无法正常工作。
        response.reset();
        response.setContentType("application/octet-stream; charset=utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=" + URLUtil.encode(fileName));
        IoUtil.write(response.getOutputStream(), Boolean.TRUE, bytes);
    }
}
