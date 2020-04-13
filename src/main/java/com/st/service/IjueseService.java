package com.st.service;

import java.util.List;
import java.util.Map;

public interface IjueseService {

	//juese
	List juese_list(Map map);
	int juese_list_total(Map map);

	//add
	void role_list_add(Map map);
	//删
	void role_list_del(Map map);
	//改
	void role_list_upd(Map map);
}
