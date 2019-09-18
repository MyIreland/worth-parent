package cn.worth.tools.approval.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 审批任务
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@TableName("approval_task")
public class ApprovalTask extends Model<ApprovalTask> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 审批任务名称
     */
    private String name;
    /**
     * 审批任务类型  字典值 approval_type
     */
    private Integer type;
    /**
     * 审批任务状态 0-进行中 1-审批通过 2-审批拒绝 3-审批取消
     */
    private Integer status;
    /**
     * 总审批节点数
     */
    @TableField("total_process")
    private Integer totalProcess;
    /**
     * 创建时间
     */
    @TableField("gmt_create")
    private Date gmtCreate;
    /**
     * 创建人
     */
    @TableField("user_create")
    private Long userCreate;

    @TableField("tenant_id")
    private Long tenantId;

    public Long getTenantId() {
        return tenantId;
    }

    public void setTenantId(Long tenantId) {
        this.tenantId = tenantId;
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getTotalProcess() {
        return totalProcess;
    }

    public void setTotalProcess(Integer totalProcess) {
        this.totalProcess = totalProcess;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Long getUserCreate() {
        return userCreate;
    }

    public void setUserCreate(Long userCreate) {
        this.userCreate = userCreate;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "ApprovalTask{" +
        ", id=" + id +
        ", name=" + name +
        ", type=" + type +
        ", status=" + status +
        ", totalProcess=" + totalProcess +
        ", gmtCreate=" + gmtCreate +
        ", userCreate=" + userCreate +
        "}";
    }
}
