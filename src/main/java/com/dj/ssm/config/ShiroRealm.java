
package com.dj.ssm.config;

import com.dj.ssm.pojo.ResourcePojo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.service.resource.ResourceService;
import com.dj.ssm.service.staff.StaffService;
import jdk.nashorn.internal.ir.annotations.Reference;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import java.util.List;


/**
 * 自定义Realm
 */

@Component
public class ShiroRealm extends AuthorizingRealm {


/**
     * 用户服务
     */
    @Reference
    private StaffService staffService;

    /**
     * 资源服务
     */
    @Reference
    private ResourceService resourceService;

    /**
     * 授权
     * @param principalCollection
     * @return
     */

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) throws UnauthorizedException {
        // 创建简单授权信息
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
        // 获取session
        Session session = SecurityUtils.getSubject().getSession();
        StaffPojo staff = (StaffPojo) session.getAttribute("staff");
        try {
            List<ResourcePojo> byId = resourceService.findById(staff.getId());
            byId.forEach(resource -> simpleAuthorInfo.addStringPermission(resource.getResourceCode()));
        } catch (Exception e) {

        }
        return simpleAuthorInfo;
    }

/**
     * 认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        // 得到用户名
        String username = (String) authenticationToken.getPrincipal();
        // 得到密码
        String userPwd = new String((char[]) authenticationToken.getCredentials());
        return new SimpleAuthenticationInfo(username, userPwd, getName());
    }

}

