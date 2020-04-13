package com.st.service;

import java.util.List;
import java.util.Map;

public interface IUserService {

	//user
	
	List user_list(Map map);
	int user_list_total(Map map);
	
	//增
	void user_list_add(Map map);

	//删
	void user_list_delete(Map map);
	
	//改
	void user_list_update(Map map);
	
}
