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
import com.st.service.IUserService;
import com.st.util.Context;
@Service
public class Userservice implements IUserService{

	@Autowired
	IUserDao userdao;
	IQuanxianDao quanxiandao;
	IJueseDao juesedao;
	IGonghaiDao gonghaidao;
	IBumenDao bumendao;
	IAlluserDao alluserdao;
	
	@Override
	public List user_list(Map map) {
		// TODO Auto-generated method stub
		Context.state_del_no(map);
		Context.pagebounds(map);
		//RowBounds row=Context.pagebounds(map);
		List list=userdao.user_list(map);
		
		return list;
	}
	@Override
	public int user_list_total(Map map) {
		// TODO Auto-generated method stub
		int count=userdao.user_list_total(map);
		return count;
	}
	//增
	@Override
	public void user_list_add(Map map) {
		// TODO Auto-generated method stub
		userdao.user_list_add(map);
		
	}
	//删
	@Override
	public void user_list_delete(Map map) {
		// TODO Auto-generated method stub
		userdao.user_list_delete(map);
	}
	//改
	@Override
	public void user_list_update(Map map) {
		// TODO Auto-generated method stub
		userdao.user_list_update(map);
	}
	
	
	
}

