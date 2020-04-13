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
@RequestMapping("sys")
public class RizhiAction {

	@Autowired

	@RequestMapping("rizhi_page")
	public  String rizhi_page() {
		System.out.println("访问");
		return "sys/rizhi_page";
	}
}
