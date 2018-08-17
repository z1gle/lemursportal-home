package org.wcs.lemursportal.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * @author z
 *
 */
public interface AuthenticationService extends UserDetailsService {
	
	/**
	 * 
	 * @return
	 */
//	public String findLoggedInUsername();
	
	/**
	 * 
	 * @param username
	 * @param password
	 */
    public void autoLogin(String email, String password, HttpServletRequest request);
}
