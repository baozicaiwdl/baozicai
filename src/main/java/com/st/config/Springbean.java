package com.st.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class Springbean {

	@Bean
	public InternalResourceViewResolver setirv() {
		InternalResourceViewResolver irv=new InternalResourceViewResolver();
		irv.setSuffix(".jsp");
		irv.setPrefix("/WEB-INF/");
		return irv;
	}
	
}
