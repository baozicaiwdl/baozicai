package com.st.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * 员工管理
 * @author 12728
 *
 */
import org.springframework.web.bind.annotation.ResponseBody;

import com.st.service.IUserService;
import com.st.util.TAblejson;
@Controller
@RequestMapping("sys")
public class UserAction {

	@Autowired
	IUserService userservice;
	

	@RequestMapping("user_page")
	public  String user_page() {
		System.out.println("访问");
		return "sys/user_page";
	}
	
	@RequestMapping("user_list")
	@ResponseBody
	public TAblejson  user_list(@RequestParam Map map) {
		System.out.println(map);
		List list=userservice.user_list(map);
		System.out.println(map);
		int total=userservice.user_list_total(map);
		System.out.println(map);
		return TAblejson.tablejson(list, total);
	}
	
	//增
	@RequestMapping("user_list_add")
	@ResponseBody
	public void user_list_add(@RequestParam Map map) {
		System.out.println(map);
		userservice.user_list_add(map);
	}
	//删
	@RequestMapping("user_list_delete")
	@ResponseBody
	public void user_list_delete(@RequestParam Map map) {
		userservice.user_list_delete(map);
	}
	//删s
		@RequestMapping("user_list_deletes")
		@ResponseBody
		public void user_list_deletes(@RequestParam(value = "gktypeid[]") String[] gktypeid) {
			String[] arr=gktypeid;
			for(String a:arr) {
				Map map=new HashMap();
				map.put("user_id", a);
				userservice.user_list_delete(map);
			}
			
		}
	//改
	@RequestMapping("user_list_update")
	@ResponseBody
	public void user_list_update(@RequestParam Map map) {
		userservice.user_list_update(map);
	}
	
}
