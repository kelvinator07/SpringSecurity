package com.geekykel.springsecurity.config;

import com.geekykel.springsecurity.SpringSecurityApplication;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MySpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { SpringSecurityApplication.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

}






