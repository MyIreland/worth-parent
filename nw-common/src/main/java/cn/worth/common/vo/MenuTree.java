package cn.worth.common.vo;

import lombok.Getter;
import lombok.Setter;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/24
 */
@Getter
@Setter
public class MenuTree extends TreeNode {
    /**
     * 菜单ID
     */
    private Long id;
    /**
     * 菜单名称
     */
    private String name;
    /**
     * 菜单权限标识
     */
    private String permission;
    /**
     * 请求链接
     */
    private String url;
    /**
     * 请求方法
     */
    private String method;
    /**
     * 父菜单ID
     */
    private Long parentId;
    /**
     * 图标
     */
    private String icon;
    /**
     * 排序值
     */
    private Integer sort;
    /**
     * 菜单类型 （0菜单 1按钮 2链接）
     */
    private String type;
}
