package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface IJueseDao {

	//数据
	List juese_list(Map map);
	int juese_list_total(Map map);
	//增删改
	void role_list_add(Map map);
	void role_list_del(Map map);
	void role_list_upd(Map map);
}
