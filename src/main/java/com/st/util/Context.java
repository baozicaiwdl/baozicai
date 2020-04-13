package com.st.util;

import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.eclipse.jdt.internal.compiler.apt.dispatch.RoundDispatcher;

public class Context {

	public static final int STATE_DEL_NO=1;
	public static final int STATE_DEL_YES=0;
	public static void state_del_no(Map map) {
		map.put("state", STATE_DEL_NO);
	}
	public static void state_del_yes(Map map) {
		map.put("state", STATE_DEL_YES);
	}
	public static  void   pagebounds( Map map) {
		int page=Integer.parseInt(map.get("page")+"");
		int limit=Integer.parseInt(map.get("limit")+"");
		int start=(page-1)*limit;
		map.put("start", start);
		//RowBounds row=new RowBounds(start, limit);
		
	}
}
