package cn.worth.generator;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author zhangjinkun@xdf.cn
 * @date 2018/07/24
 */
public class ResourcesGenerator {

    private Properties properties;

    @Before
    public void beforeTest() throws IOException {
        properties = new Properties();
        InputStream in = this.getClass().getClassLoader().getResourceAsStream("config/generator.properties");
        properties.load(in);
    }

    @Test
    public void generateCode() {
        boolean serviceNameStartWithI = false;//user -> UserService, 设置成true: user -> IUserService
//        generateByTables(serviceNameStartWithI, "gd_cancel_class_apply", "gd_class_info_modify_apply",
//                "gd_learning_situation_demand", "gd_old_handle_record", "gd_old_message_record", "gd_old_plan_course_order",
//                "gd_old_plan_course_order_course", "gd_plan_course_feedback", "gd_plan_course_order","gd_plan_course_order_course",
//                "gd_plan_handle_record", "gd_plan_message_record","gd_school_dept_config","gd_special_apply","gd_user_dept_config");
        generateByTables(serviceNameStartWithI,"oauth_client_details");
    }

    private void generateByTables(boolean serviceNameStartWithI, String... tableNames) {

        AutoGenerator autoGenerator = new AutoGenerator();
        /*
         * 全局配置
         */
        GlobalConfig globalConfig = new GlobalConfig();
        globalConfig.setOutputDir("src\\main\\java");
        globalConfig.setFileOverride(true);
        globalConfig.setActiveRecord(true);
        // XML 二级缓存
        globalConfig.setEnableCache(false);
        // XML ResultMap
        globalConfig.setBaseResultMap(true);
        // XML columList
        globalConfig.setBaseColumnList(true);
        globalConfig.setAuthor("chenxiaoqing");
        autoGenerator.setGlobalConfig(globalConfig);

        /*
         * 数据源配置
         */
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDbType(DbType.MYSQL);
        dsc.setDriverName(properties.getProperty("jdbc.driver"));
//        dsc.setUsername("w_platform");
//        dsc.setPassword("w_123456");
//        dsc.setUrl("jdbc:mysql://10.132.15.32:3306/w_platform?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false");
        dsc.setUsername("root");
        dsc.setPassword("1234");
        dsc.setUrl("jdbc:mysql://127.0.0.1:3306/new-worth?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false");
        autoGenerator.setDataSource(dsc);

        /*
         * 策略配置
         */
        StrategyConfig strategyConfig = new StrategyConfig();
        // strategy.setCapitalMode(true);// 全局大写命名 ORACLE 注意
        //设置父类
        strategyConfig.setSuperControllerClass("cn.xdf.gongdan.common.web.BaseController");
        // 表名生成策略
        strategyConfig.setNaming(NamingStrategy.underline_to_camel);
        //去除表名前缀 update
//        strategyConfig.setTablePrefix(NamingStrategy.removePrefix(""));

        strategyConfig.setCapitalMode(true);
        strategyConfig.setEntityLombokModel(false);
        strategyConfig.setInclude(tableNames);
        autoGenerator.setStrategy(strategyConfig);

        /*
         * 包配置
         */
        PackageConfig pc = new PackageConfig();
        //update
        pc.setParent("cn.xdf.gongdan");
        pc.setController("controller");
        pc.setEntity("domain");
        autoGenerator.setPackageInfo(pc);

        if (!serviceNameStartWithI) {
            globalConfig.setServiceName("%sService");
        }
        autoGenerator.execute();
    }
}
