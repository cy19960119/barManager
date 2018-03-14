package com.barManager.shiro.realm;


import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.barManager.dao.BmAdminMapper;
import com.barManager.dao.BmUserMapper;
import com.barManager.entity.BmAdmin;
import com.barManager.entity.BmUser;

public class UserRealm extends AuthorizingRealm {
    
    static Logger logger = Logger.getLogger(UserRealm.class);
    

    @Autowired
    private BmAdminMapper bmAdminMapper;
//登录认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
        
    	UsernamePasswordToken token=(UsernamePasswordToken) authcToken;
        String username = (String) token.getPrincipal();
//        String password = new String((char[])token.getCredentials());
        
        BmAdmin bmAdmin = this.bmAdminMapper.queryAdminByUsername(username);
        
        if(bmAdmin == null){
            logger.warn("无此用户信息,用户名："+username);
            throw new UnknownAccountException("无此用户信息,用户名："+username);
        }
        
        logger.info("token: "+JSON.toJSONString(token));
        Subject currentUser = SecurityUtils.getSubject();
        currentUser.getSession().setAttribute("user", bmAdmin);
        return new SimpleAuthenticationInfo(username, bmAdmin.getPassWord(),getName());
        
    }

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		return null;
	}

}
