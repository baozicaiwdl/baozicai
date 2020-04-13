package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface IBumenDao {

	//数据
	List bumen_list(Map map);
	int bumen_list_total(Map map);
}
