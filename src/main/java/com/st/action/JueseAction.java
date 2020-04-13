package com.st.action;

import java.util.HashMap;
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

/**
 * 角色管理
 * @author 12728
 *
 */
@Controller
@RequestMapping("sys")
public class JueseAction {

	@Autowired
	IjueseService jueseservice;
	
	
	@RequestMapping("juese_list")
	@ResponseBody
	public TAblejson  juese_list(@RequestParam Map map) {
		System.out.println(map);
		List list=jueseservice.juese_list(map);
		System.out.println(map);
		int total=jueseservice.juese_list_total(map);
		System.out.println(map);
		return TAblejson.tablejson(list, total);
	}

	@RequestMapping("juese_page")
	public  String juese_page() {
		System.out.println("访问");
		return "sys/juese_page";
	}

	
	//增
		@RequestMapping("role_list_add")
		@ResponseBody
		public void role_list_add(@RequestParam Map map) {
			System.out.println(map);
			jueseservice.role_list_add(map);
		}
		//删
		@RequestMapping("user_list_delete")
		@ResponseBody
		public void user_list_delete(@RequestParam Map map) {
			jueseservice.role_list_del(map);
		}
		//删s
			@RequestMapping("user_list_deletes")
			@ResponseBody
			public void user_list_deletes(@RequestParam(value = "gktypeid[]") String[] gktypeid) {
				String[] arr=gktypeid;
				for(String a:arr) {
					Map map=new HashMap();
					map.put("user_id", a);
					jueseservice.role_list_del(map);
				}
				
			}
		//改
		@RequestMapping("user_list_update")
		@ResponseBody
		public void user_list_update(@RequestParam Map map) {
			jueseservice.role_list_upd(map);
		}
		
}
