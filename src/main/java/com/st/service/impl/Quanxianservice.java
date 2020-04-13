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
import com.st.service.IquanxianService;
import com.st.util.Context;
@Service
public class Quanxianservice implements IquanxianService{
	@Autowired

	IQuanxianDao quanxiandao;

	
	
	@Override
	public List quanxian_list(Map map) {
		// TODO Auto-generated method stub
		Context.state_del_no(map);
		Context.pagebounds(map);
		//RowBounds row=Context.pagebounds(map);
		List list=quanxiandao.quanxian_list(map);
		
		return list;
	}@Override
	public int quanxian_list_total(Map map) {
		// TODO Auto-generated method stub
		int count=quanxiandao.quanxian_list_total(map);
		return count;
	}
}
