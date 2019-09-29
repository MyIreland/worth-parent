package cn.worth.tools.generator.spring.boot.starter;

import cn.worth.common.utils.StringUtils;

public class StarterService {
    private String config;

    public StarterService(String config) {
        this.config = config;
    }
    
    public String[] split(String separatorChar) {
        return StringUtils.split(this.config, separatorChar);
    }
    
}