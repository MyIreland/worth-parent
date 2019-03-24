package cn.worth.admin.service;

import cn.worth.admin.domain.Menu;
import cn.worth.common.pojo.MenuVO;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * <p>
 * 菜单管理 服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
public interface IMenuService extends IService<Menu> {

    List<MenuVO> findMenuByRoleIds(List<Long> roleIds);
}
