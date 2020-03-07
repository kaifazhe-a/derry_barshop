package com.dj.ssm.config;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

import java.util.HashMap;
import java.util.Map;

/**
 * Shiro配置
 */
@Configuration
@DependsOn("shiroRealm") // 表示依赖的bean
public class ShiroConfiguration {

    /**
     * 自定义Realm
     */
    @Autowired
    private ShiroRealm shiroRealm;

    /**
     * 安全管理器
     */
    @Bean
    DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(shiroRealm);
        return securityManager;
    }

    /**
     * Shiro过滤器工厂
     */
    @Bean
    ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager) {
        // 定义 shiroFactoryBean
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        // 设置securityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        // 设置默认登录的 URL，身份认证失败会访问该 URL
        shiroFilterFactoryBean.setLoginUrl("/user/toLogin");
        // 设置成功之后要跳转的链接
        shiroFilterFactoryBean.setSuccessUrl("/index/toIndex");
        // 设置未授权界面，权限认证失败会访问该 URL
        shiroFilterFactoryBean.setUnauthorizedUrl("/403.jsp");
        Map<String, String> filters = new HashMap<>();

        // anon 表示不需要认证
        filters.put("/user/login", "anon"); // 登录
        filters.put("/user/toUserAdd", "anon"); // 去注册
        filters.put("/user/userAdd", "anon"); // 注册
        filters.put("/user/toForgetPwd", "anon"); // 忘记密码
        filters.put("/itme/toShow", "anon"); // 设置新密码
        filters.put("/itme/show", "anon"); // 设置新密码
        filters.put("/to/index", "anon"); // 发送短信验证码
        filters.put("/to/top", "anon"); // 发送短信验证码
        filters.put("/to/left", "anon"); // 发送短信验证码
        filters.put("/to/right", "anon"); // 发送短信验证码
        filters.put("/res/**", "anon"); // 静态资源

        // authc 表示必须认证才可访问
        filters.put("/**", "authc");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(filters);
        return shiroFilterFactoryBean;
    }


}
