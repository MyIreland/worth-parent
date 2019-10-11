package cn.worth.generator;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.DbType;
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
        generateByTables(serviceNameStartWithI, "biz_member_level");
    }

    private void generateByTables(boolean serviceNameStartWithI, String... tableNames) {

        AutoGenerator autoGenerator = new AutoGenerator();
        /*
         * 全局配置
         */
        GlobalConfig globalConfig = new GlobalConfig();
        globalConfig.setOutputDir("src/main/java");
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
        dsc.setUsername(properties.getProperty("jdbc.username"));
        dsc.setPassword(properties.getProperty("jdbc.password"));
        dsc.setUrl(properties.getProperty("jdbc.url"));
        autoGenerator.setDataSource(dsc);

        /*
         * 策略配置
         */
        StrategyConfig strategyConfig = new StrategyConfig();
        // strategy.setCapitalMode(true);// 全局大写命名 ORACLE 注意
        //设置父类
        strategyConfig.setSuperControllerClass(properties.getProperty("admin.superController"));
        // 表名生成策略
        strategyConfig.setNaming(NamingStrategy.underline_to_camel);
        //去除表名前缀 update
        strategyConfig.setTablePrefix(NamingStrategy.removePrefix("sys_"));

        strategyConfig.setCapitalMode(true);
        strategyConfig.setEntityLombokModel(true);
        strategyConfig.setInclude(tableNames);
        strategyConfig.setRestControllerStyle(true);
        autoGenerator.setStrategy(strategyConfig);

        /*
         * 包配置
         */
        PackageConfig pc = new PackageConfig();
        //update
        pc.setParent(properties.getProperty("gen.basePackageName"));
        pc.setController("controller");
        pc.setEntity("domain");
        autoGenerator.setPackageInfo(pc);

//        if (!serviceNameStartWithI) {
//            globalConfig.setServiceName("%sService");
//        }
        autoGenerator.execute();
    }
}
