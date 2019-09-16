package cn.worth.tools.file.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 文件上传
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-11
 */
@TableName("sys_file")
public class File extends Model<File> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String name;
    /**
     * 文件类型
     */
    private Integer type;
    /**
     * URL地址
     */
    private String url;
    /**
     * URL地址
     */
    @TableField("biz_type")
    private String bizType;
    /**
     * 创建时间
     */
    @TableField("gmt_create")
    private Date gmtCreate;

    public String getName() {
        return name;
    }

    public String getBizType() {
        return bizType;
    }

    public void setBizType(String bizType) {
        this.bizType = bizType;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "File{" +
        ", id=" + id +
        ", type=" + type +
        ", url=" + url +
        ", gmtCreate=" + gmtCreate +
        "}";
    }
}
