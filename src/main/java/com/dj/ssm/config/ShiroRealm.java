package com.dj.ssm.config;

import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.realm.AuthorizingRealm;
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
    /*@Reference
    private UserApi userApi;*/

    /**
     * 资源服务
     */
   /* @Reference
    private ResourceApi resourceApi;*/

    /**
     * 授权
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) throws UnauthorizedException {
        /*// 创建简单授权信息
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
        // 获取session
        Session session = SecurityUtils.getSubject().getSession();
        List<ResourceDTOReq> userResourceList = (List<ResourceDTOReq>) session.getAttribute(Constant.USER_RESOURCE_SESSION);
        userResourceList.forEach(resource -> simpleAuthorInfo.addStringPermission(resource.getResourceCode()));
        return simpleAuthorInfo;*/
        return null;
    }

    /**
     * 认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        /*// 得到用户名
        String username = (String) authenticationToken.getPrincipal();
        // 得到密码
        String userPwd = new String((char[]) authenticationToken.getCredentials());
        return new SimpleAuthenticationInfo(username, userPwd, getName());*/
        return null;
    }

}
