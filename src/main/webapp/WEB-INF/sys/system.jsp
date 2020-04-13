<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">layui 后台布局</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
			
					<dl class="layui-nav-child">
						<dd>
							<a href="">邮件管理</a>
						</dd>
						<dd>
							<a href="">消息管理</a>
						</dd>
						<dd>
							<a href="">授权管理</a>
						</dd>
					</dl></li>
				<%-- <li class="layui-nav-item"><a href="">在线人数</a>
					<dl class="layui-nav-child">
						<dd>
							<a id="peponum" href="">${pepo}</a>
						</dd>
					</dl></li> --%>

			</ul>
			<ul class="layui-nav layui-layout-right"  >
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img">${sessionScope.sys1.systemname}
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
						<dd>
							<a onclick='user_upd()'>修改密码</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a
					href="javascript:;parent.location.href = ''"
					onclick='return confirm('确定退出登录吗?');'>退出</a></li>
			</ul>
		</div>

		<div class="layui-side " style="background-image:url(static/img/cos.jpg);background-size:100% 100%;" >
			<div class="layui-side-scroll" style="background-image:url(static/img/cos.jpg);">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test" >
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">系统管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" page="sys/user_page">员工管理</a>
							</dd>
							<dd>
								<a href="javascript:;" page="sys/juese_page">角色管理</a>
							</dd>
							<dd>
								<a href="javascript:;" page="sys/quanxian_page">权限管理</a>
							</dd>
							<dd>
								<a href="javascript:;" page="sys/bumen_page">部门管理</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">客户管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" page="sys/alluser_page">全部客户</a>
							</dd>
							<dd>
								<a href="javascript:;" page="sys/gonghaiuser_page">公海客户</a>
							</dd>
							<dd>
								<a href="javascript:;" page="sys/huifang_page">回访记录</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"
						page="sys/rizhi_page" >管理日志</a></li>
					<li class="layui-nav-item"><a href="javascript:;"
						>404测试</a></li>
				</ul>
			</div>
		</div>
		<div hidden id='update_user_div'>
			<div class=layui-form-item>
				<div class="layui-inline">
					<label class="layui-form-label">原密码</label>
					<div class="layui-input-inline">
						<input type='password' id='update_userpass' name='userpass'
							autocomplete='off' class='layui-input'>
					</div>
				</div>
			</div>
			<div class=layui-form-item>
				<div class="layui-inline">
					<label class="layui-form-label">新密码</label>
					<div class="layui-input-inline">
						<input type='password' id='update_userpassnew' name='userpass'
							autocomplete='off' class='layui-input'>
					</div>
				</div>
			</div>
			<div class=layui-form-item>
				<div class="layui-inline">
					<label class="layui-form-label">确认新密码</label>
					<div class="layui-input-inline">
						<input type='password' id='update_userpassnewqueren' name='userpass'
							autocomplete='off' class='layui-input'>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-body" style="">
			<!-- 内容主体区域 -->
			<iframe style="height: 98%; width: 98%;" "></iframe>
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© layui.com - 底部固定区域
		</div>
	</div>
<%@ include file="../layui.jsp" %>
	<script>
		
		$("[page]").click(function() {
			
			$("iframe").attr("src", $(this).attr("page"));
		});
	
	</script>
</body>
</html>