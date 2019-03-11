package cn.worth.auth.domain;

import com.baomidou.mybatisplus.activerecord.Model;
import org.springframework.security.core.GrantedAuthority;

import java.io.Serializable;

/**
 * 授权权限模型
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
public class SysGrantedAuthority extends Model implements GrantedAuthority {
    /**
     * 权限
     */
    private String authority;

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    protected Serializable pkVal() {
        return null;
    }

    @Override
    public String getAuthority() {
        return null;
    }
}
