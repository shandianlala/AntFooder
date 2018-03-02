package com.sdll.antfooder.shiro;

import com.sdll.antfooder.util.MD5Util;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

/**
 * 证书匹配
 * @author shandianlala
 * @date 2018年3月2日 下午11:00:55
 *
 */
public class CustomerCredentialsMatcher extends SimpleCredentialsMatcher {


    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {

        UsernamePasswordToken authcToken = (UsernamePasswordToken) token;
        String passwordFromAthcToken = String.valueOf(authcToken.getPassword());
        Object accountCredentials = null;
        try {
            accountCredentials = MD5Util.crypt(getCredentials(info).toString());
        } catch (Exception e) {
            return Boolean.FALSE.booleanValue();
        }
        return equals(passwordFromAthcToken, accountCredentials);
//        return super.doCredentialsMatch(token, info);
    }


}
