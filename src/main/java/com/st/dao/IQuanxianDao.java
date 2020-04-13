package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface IQuanxianDao {

	//数据
	List quanxian_list(Map map);
	int quanxian_list_total(Map map);
}
