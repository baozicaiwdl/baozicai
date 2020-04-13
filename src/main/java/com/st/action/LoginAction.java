package com.st.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.st.service.IUserService;
import com.st.service.IalluserService;
import com.st.service.IbumenService;
import com.st.service.IgonghaiuserService;
import com.st.service.IjueseService;
import com.st.service.IquanxianService;

@Controller

public class LoginAction {

	@Autowired
	IUserService userservice;
	IquanxianService quanxianservice;
	IjueseService jueseservice;
	IgonghaiuserService gonghaiuserservice;
	IbumenService bumenservice;
	IalluserService alluserservice;
	@RequestMapping("system")
	public String system() {
		return "sys/system";
	}
	

}
