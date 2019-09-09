package cn.worth.thirdparty.quartz.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
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
 * @since 2019-09-09
 */
@TableName("sys_task")
public class Task extends Model<Task> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 任务名
     */
    @TableField("job_name")
    private String jobName;
    /**
     * 任务调用的方法名
     */
    @TableField("method_name")
    private String methodName;
    /**
     * cron表达式
     */
    @TableField("cron_expression")
    private String cronExpression;
    /**
     * 任务执行时调用哪个类的方法 包名+类名
     */
    @TableField("bean_class")
    private String beanClass;
    /**
     * Spring bean
     */
    @TableField("spring_bean")
    private String springBean;
    /**
     * 任务是否有状态
     */
    @TableField("is_concurrent")
    private String isConcurrent;
    /**
     * 任务描述
     */
    private String description;
    /**
     * 创建时间
     */
    @TableField("gmt_create")
    private Date gmtCreate;
    /**
     * 创建者
     */
    @TableField("create_user")
    private Long createUser;
    /**
     * 更新者
     */
    @TableField("update_user")
    private Long updateUser;
    /**
     * 更新时间
     */
    @TableField("gmt_update")
    private Date gmtUpdate;
    /**
     * 任务状态
     */
    private Integer status;
    /**
     * 任务分组
     */
    private String group;
    /**
     * 任务分组
     */
    private Integer delFlag;

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getMethodName() {
        return methodName;
    }

    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }

    public String getCronExpression() {
        return cronExpression;
    }

    public void setCronExpression(String cronExpression) {
        this.cronExpression = cronExpression;
    }

    public String getBeanClass() {
        return beanClass;
    }

    public void setBeanClass(String beanClass) {
        this.beanClass = beanClass;
    }

    public String getSpringBean() {
        return springBean;
    }

    public void setSpringBean(String springBean) {
        this.springBean = springBean;
    }

    public String getIsConcurrent() {
        return isConcurrent;
    }

    public void setIsConcurrent(String isConcurrent) {
        this.isConcurrent = isConcurrent;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Long getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Long createUser) {
        this.createUser = createUser;
    }

    public Long getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(Long updateUser) {
        this.updateUser = updateUser;
    }

    public Date getGmtUpdate() {
        return gmtUpdate;
    }

    public void setGmtUpdate(Date gmtUpdate) {
        this.gmtUpdate = gmtUpdate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Task{" +
        ", id=" + id +
        ", jobName=" + jobName +
        ", methodName=" + methodName +
        ", cronExpression=" + cronExpression +
        ", beanClass=" + beanClass +
        ", springBean=" + springBean +
        ", isConcurrent=" + isConcurrent +
        ", description=" + description +
        ", gmtCreate=" + gmtCreate +
        ", createUser=" + createUser +
        ", updateUser=" + updateUser +
        ", gmtUpdate=" + gmtUpdate +
        ", status=" + status +
        ", group=" + group +
        "}";
    }
}
