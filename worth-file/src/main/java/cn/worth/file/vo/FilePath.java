package cn.worth.file.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * 属性文件  最终的目录为  belongName/belongType/prePath/yyyyMMdd/HH
 */
@Data
public class FilePath implements Serializable {
    private static final long serialVersionUID=1L;


    /**
     * 文件上传类型 唯一字段
     */
    private String type;

    /**
     * 文件地址前缀
     */
    private String prePath;

    /**
     * 归属应用
     */
    private String belongName;

    /**
     * 归属应用类别
     */
    private String belongType;

    /**
     * 回调地址
     */
    private String callback;
}