package cn.worth.tools.approval.domain;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@TableName("approval_task_process")
public class ApprovalTaskProcess extends Model<ApprovalTaskProcess> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 任务节点名称
     */
    private String name;
    /**
     * 任务节点状态 0-待审核 1-通过 2-取消
     */
    private Integer status;
    /**
     * 任务节点排序
     */
    private Integer sort;
    /**
     * 任务节点审批人
     */
    @TableField("user_id")
    private Long userId;
    /**
     * 任务节点审批人名称
     */
    @TableField("user_name")
    private String userName;
    /**
     * 任务id
     */
    @TableField("task_id")
    private Long taskId;
    /**
     * 描述
     */
    private String description;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getTaskId() {
        return taskId;
    }

    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "ApprovalTaskProcess{" +
        ", id=" + id +
        ", name=" + name +
        ", status=" + status +
        ", sort=" + sort +
        ", userId=" + userId +
        ", taskId=" + taskId +
        ", description=" + description +
        "}";
    }
}
