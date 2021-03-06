package com.sdll.antfooder.shiro;

import com.sdll.antfooder.pojo.User;
import com.sdll.antfooder.service.IUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 用户自定义都可授权范围类 CutomeRealm,
 * @author shandianlala
 * Authorizing 授权，批准，委托
 * Realm 王国; 领域，范围,界
 */
public class CustomerRealm extends AuthorizingRealm {

    @Autowired
    IUserService userService;

    //获取授权信息
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        //Object object = this.getAvailablePrincipal(principals);
        SimpleAuthorizationInfo principal = new SimpleAuthorizationInfo();
        //principal.setRoles(new HashSet<String>());
        //principal.setStringPermissions(new HashSet<String>(){});
        return principal;
    }

    //获取身份认证信息
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        AuthenticationInfo athcInfo = null;
        UsernamePasswordToken athcToken = (UsernamePasswordToken) token;
        try {
            User user = userService.userLogin(athcToken.getUsername());
            //验证是否存在用户
            if (null != user) {
                athcInfo =  new SimpleAuthenticationInfo(user.getUserPhone(), user.getUserPassword(), getName());
            }
            return athcInfo;
        } catch (Exception ex) {
            throw new AuthenticationException(ex);
        }
    }
}
