package com.jsp.foodapp.helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@ComponentScan(basePackages = "com.jsp")
@Configuration
public class Config {

	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		internalResourceViewResolver.setPrefix("/");
		internalResourceViewResolver.setSuffix(".jsp");
		return internalResourceViewResolver;
	}
	@Bean
	public EntityManagerFactory m1() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("prasad");
		return emf;
	}
		 
}
