package com.st.util;

import java.util.List;

public class TAblejson {

	private String msg;
	private int code=0;
	private int count;
	private List data;
	
	public static TAblejson tablejson(List list,int i) {
		TAblejson json=new TAblejson();
		json.setData(list);
		json.setCount(i);
		return json;
	}
	
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	
}
