package com.huvata.qldh.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.huvata.qldh.conts.PageConst;

@Controller
//@RequestMapping(value = PageConst.LOGIN)
public class LoginController {
	
	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = {"", "/", PageConst.LOGIN_PATH}, method = { RequestMethod.GET })
	public String login(Model model) {
		if (this.isCurrentAuthenticationAnonymous()) {
			return PageConst.LOGIN_PAGE;
	    } else {
	    	return this.redirectTo(PageConst.MAIN_PATH);
	    }
	}
	
	/**
	 * This method handles logout requests.
	 * Toggle the handlers if you are RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}
	
	@RequestMapping(value = PageConst.Error403_PATH, method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {
		String message = "";
		if (principal != null) {
			message = "[ " + principal.getName() + " ]: You do not have permission to access this page!";
		} else {
			message = "You do not have permission to access this page!";
		}
		model.addAttribute("message", message);
		return PageConst.Error403_PAGE;
	}
	
	/**
	 * This method returns true if users is already authenticated [logged-in], else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}
	
	private String redirectTo(final String path) {
	    return String.format("%s%s", PageConst.REDIRECT, path);
	}
	
}
