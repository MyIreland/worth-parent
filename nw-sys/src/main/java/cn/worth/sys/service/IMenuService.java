package cn.worth.sys.service;

import cn.worth.sys.domain.Menu;
import cn.worth.common.vo.MenuVO;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;
import java.util.Set;

/**
 * <p>
 * 菜单管理 服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
public interface IMenuService extends IService<Menu> {

    List<MenuVO> findPermsByRoleIds(List<Long> roleIds);

    List<MenuVO> findMenusByRoleIds(List<Long> roleIds);
}
