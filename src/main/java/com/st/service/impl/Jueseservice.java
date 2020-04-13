package com.st.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.dao.IJueseDao;
import com.st.service.IjueseService;
import com.st.util.Context;
@Service
public class Jueseservice implements IjueseService{
	@Autowired
	IJueseDao juesedao;
	

	@Override
	public List juese_list(Map map) {
		// TODO Auto-generated method stub
		System.out.println("service"+map);
		Context.state_del_no(map);
		Context.pagebounds(map);
		System.out.println("serv"+map);
		//RowBounds row=Context.pagebounds(map);
		List list=juesedao.juese_list(map);
		
		return list;
	}@Override
	public int juese_list_total(Map map) {
		// TODO Auto-generated method stub
		int count=juesedao.juese_list_total(map);
		return count;
	}
	@Override
	public void role_list_add(Map map) {
		// TODO Auto-generated method stub
		juesedao.role_list_add(map);
	}
	@Override
	public void role_list_del(Map map) {
		// TODO Auto-generated method stub
		juesedao.role_list_del( map);
	}
	@Override
	public void role_list_upd(Map map) {
		// TODO Auto-generated method stub
		juesedao.role_list_upd( map);
	}
	
	
}
