package com.st.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.st.service.IUserService;
import com.st.service.IalluserService;
import com.st.service.IbumenService;
import com.st.service.IgonghaiuserService;
import com.st.service.IjueseService;
import com.st.service.IquanxianService;
import com.st.util.TAblejson;

@Controller
@RequestMapping("sys")
public class BumenAction {


	@Autowired

	IbumenService bumenservice;

	
	@RequestMapping("bumen_list")
	@ResponseBody
	public TAblejson  bumen_list(@RequestParam Map map) {
		System.out.println(map);
		List list=bumenservice.bumen_list(map);
		System.out.println(map);
		int total=bumenservice.bumen_list_total(map);
		System.out.println(map);
		return TAblejson.tablejson(list, total);
	}
	@RequestMapping("bumen_page")
	public  String bumen_page() {
		System.out.println("访问");
		return "sys/bumen_page";
	}
}
