package cn.worth.common.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/24
 */
@Getter
@Setter
public class TreeNode {
    protected Long id;
    protected Long parentId;
    protected List<TreeNode> children = new ArrayList<>();

    public void add(TreeNode node) {
        children.add(node);
    }
}
