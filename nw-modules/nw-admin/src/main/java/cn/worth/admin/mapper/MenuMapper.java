package cn.worth.admin.mapper;

import cn.worth.admin.domain.Menu;
import cn.worth.common.pojo.MenuVO;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 菜单管理 Mapper 接口
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
public interface MenuMapper extends BaseMapper<Menu> {

    List<MenuVO> findMenuByRoleIds(@Param("roleIds") List<Long> roleIds);
}
