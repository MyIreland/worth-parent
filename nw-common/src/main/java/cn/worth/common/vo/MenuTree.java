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
    private String icon;
    private String name;
    private String url;
    private boolean spread = false;
    private String path;
    private String component;
    private String authority;
    private String redirect;
    private String code;
    private Integer type;
    private String label;
    private Integer sort;

    public MenuTree() {
    }

    public MenuTree(String id, String name, String parentId) {
        this.id = id;
        this.parentId = parentId;
        this.name = name;
        this.label = name;
    }

    public MenuTree(String id, String name, MenuTree parent) {
        this.id = id;
        this.parentId = parent.getId();
        this.name = name;
        this.label = name;
    }

    public MenuTree(MenuVO menuVo) {
        this.id = String.valueOf(menuVo.getId());
        this.parentId = String.valueOf(menuVo.getPid());
        this.icon = menuVo.getIcon();
        this.name = menuVo.getName();
        this.url = menuVo.getUrl();
        this.type = menuVo.getType();
        this.label = menuVo.getName();
        this.sort = menuVo.getSort();
    }
}
