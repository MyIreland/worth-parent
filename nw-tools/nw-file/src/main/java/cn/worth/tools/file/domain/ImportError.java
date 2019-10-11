package cn.worth.tools.file.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-10-11
 */
@Getter
@Setter
@TableName("sys_import_error")
public class ImportError extends Model<ImportError> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 错误行数
     */
    @TableField("import_id")
    private Long importId;
    @TableField("error_row")
    private Long errorRow;
    /**
     * 错误信息
     */
    private String description;
    /**
     * 时间
     */
    @TableField("gmt_create")
    private Date gmtCreate;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "ImportError{" +
        ", id=" + id +
        ", importId=" + importId +
        ", errorRow=" + errorRow +
        ", description=" + description +
        ", gmtCreate=" + gmtCreate +
        "}";
    }
}
