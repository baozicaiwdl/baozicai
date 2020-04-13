package com.st.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.dao.IAlluserDao;
import com.st.dao.IBumenDao;
import com.st.dao.IGonghaiDao;
import com.st.dao.IJueseDao;
import com.st.dao.IQuanxianDao;
import com.st.dao.IUserDao;
import com.st.service.IgonghaiuserService;
import com.st.util.Context;
@Service
public class Gonghaiservice implements IgonghaiuserService{
	@Autowired

	IGonghaiDao gonghaidao;


	@Override
	public List gonghaiuser_list(Map map) {
		// TODO Auto-generated method stub
		Context.state_del_no(map);
		Context.pagebounds(map);
		//RowBounds row=Context.pagebounds(map);
		List list=gonghaidao.gonghai_list(map);
		
		return list;
	}@Override
	public int gonghaiuser_list_total(Map map) {
		// TODO Auto-generated method stub
		int count=gonghaidao.gonghai_list_total(map);
		return count;
	}
}
