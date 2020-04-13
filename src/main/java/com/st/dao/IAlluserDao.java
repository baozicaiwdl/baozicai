package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface IAlluserDao {
	//数据
	List alluser_list(Map map);
	int alluser_list_total(Map map);
}
