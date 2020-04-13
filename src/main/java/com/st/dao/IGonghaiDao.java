package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface IGonghaiDao {

	//数据
	List gonghai_list(Map map);
	int gonghai_list_total(Map map);
}
