package com.st.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface IUserDao {

	//数据
	List user_list(Map map);
	int user_list_total(Map map);
	//增
	void user_list_add(Map map);
	//删
	void user_list_delete(Map map);
	//改
	void user_list_update(Map map);
}
