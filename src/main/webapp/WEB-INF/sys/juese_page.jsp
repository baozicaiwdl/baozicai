<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../layui/css/layui.css"
	charset="utf-8" />
</head>
<body>
	<table class='layui-table'
		lay-data="{url:'juese_list',toolbar:'#tollbar', page:true ,id:'serlist'}"
		lay-filter="test">
		<thead>
			<tr>
				<th lay-data="{type:'checkbox'}"></th>
				<th lay-data="{field:'role_id'}">职称编号</th>
				<th lay-data="{field:'role_name'}">岗位职称</th>
				<th
					lay-data="{templet:function(d){
			
			return $('#fhjf1').html();
			
			}}">操作</th>

				<!-- <th
					lay-data="{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}">
				</th> -->
			</tr>
		</thead>
	</table>
	</div>
	<div hidden id='insert_role_div' >
		<form class="layui-form" lay-filter="insert_test">
		<div class=layui-form-item>
			<div class="layui-inline">
				<label class="layui-form-label">编号</label>
				<div class="layui-input-inline">
					<input type='text' id='insert_id' name='role_id' autocomplete='off'
						class='layui-input' onfocus=this.blur()>
				</div>
			</div>
		</div>
		<div class=layui-form-item>
			<div class="layui-inline">
				<label class="layui-form-label">岗位</label>
				<div class="layui-input-inline">
					<input type='text' id='insert_name' name='role_name' autocomplete='off'
						class='layui-input'>
				</div>
			</div>
		</div>
		<div class=layui-form-item>
			<div class="layui-inline">
				<label class="layui-form-label">状态</label>
				<div class="layui-input-inline">
					<input type='text' id='insert_state' name='state' autocomplete='off'
						class='layui-input' onfocus=this.blur()>
				</div>
			</div>
		</div>
		
	</form>
	</div>
	<div hidden class=" layui-form" id='update_role_div' lay-filter="upd_test">
		<div class=layui-form-item>
			<div class="layui-inline">
				<label class="layui-form-label">编号</label>
				<div class="layui-input-inline">
					<input type='text' id='insert_id' name='role_id' autocomplete='off'
						class='layui-input' onfocus=this.blur()>
				</div>
			</div>
		</div>
		<div class=layui-form-item>
			<div class="layui-inline">
				<label class="layui-form-label">岗位</label>
				<div class="layui-input-inline">
					<input type='text' id='insert_name' name='role_name' autocomplete='off'
						class='layui-input'>
				</div>
			</div>
		</div>
		<div class=layui-form-item>
			<div class="layui-inline">
				<label class="layui-form-label">状态</label>
				<div class="layui-input-inline">
					<input type='text' id='insert_state' name='state' autocomplete='off'
						class='layui-input' onfocus=this.blur()>
				</div>
			</div>
		</div>
		
		

	</div>
	<script type="text/html" id="titleTpl">
  {{#  if(d.customerstate == 0){ }}
    拉黑
  {{#  } else { }}
    正常
  {{#  } }}
</script>
	<script type="textml" id="fhjf1">
  <a class="layui-btn layui-btn-xs" lay-event="edit1" >授权</a>
<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="edit23" >删除</a>

</script>

	<script type="text/html" id="tollbar">
<input type="text" name="title"  placeholder="请输入查询内容"  id="checktb" style="height:31px">
<button type="button" class="layui-btn layui-btn-sm" lay-event="check">
  <i class="layui-icon ">&#xe615;</i> 查询
</button>
<button type="button" class="layui-btn layui-btn-sm">
  <i class="layui-icon">&#xe669;</i> 重置
</button>
<button type="button" class="layui-btn layui-btn-sm" lay-event="add">
  <i class="layui-icon">&#xe654;</i> 新增
</button>
<button type="button" class="layui-btn layui-btn-sm layui-btn-warm">
  <i class="layui-icon">&#xe674;</i> 授权
</button>
<button type="button" class="layui-btn layui-btn-sm  layui-btn-normal" lay-event="upd">
  <i class="layui-icon">&#xe642;</i> 修改
</button>
<button type="button" class="layui-btn layui-btn-sm layui-btn-danger" lay-event="deltool"> 
  <i class="layui-icon">&#xe640;</i> 删除
</button>
</script>
<%@ include file="../layui.jsp" %>
	<script type="text/javascript" charset="utf-8">

	table.on('toolbar(test)', function(obj) {
		var checkStatus = table.checkStatus(obj.config.id);
		var data=checkStatus.data;
		console.log(checkStatus.data);
		switch (obj.event) {
		case 'check':
			table.reload('serlist',{
				where:{text:$("[name='text']").val()}
				});
			break;

		case 'add':
			layer.open({
				type : 1,//这就是定义窗口类型的属性
				shade : 0.3,
				offset : "0%",
				title:'新增用户',
				content:$("#insert_role_div"),
				btn:["保存","取消"],
				btn1:function(index, layero){
					var formdata=form.val("insert_test");
					console.log(formdata);
					$.post("role_list_add",formdata,function(d){
						 form.render();
						 table.reload("serlist", {
								url : "role_list",
								type : "post",
								async : true,
								where : {
									
								}
							});
						layer.close(index);
						})
					},
				btn2:function(index, layero){
					 form.render();
					layer.close(index);
					}
				});
		break;
		case 'upd':
			
			console.log(data[0].user_id);
			form.val("upd_test",{
				"user_id":data[0].user_id,
				"user_name":data[0].user_name,
				"user_pass":data[0].user_pass,
				"state":data[0].state
				});
			var data_upd=form.val("upd_test");
			console.log(data_upd);
			layer.open({
				type : 1,//这就是定义窗口类型的属性
				shade : 0.3,
				offset : "0%",
				title:'新增用户',
				content:$("#update_user_div"),
				btn:["保存","取消"],
				btn1:function(index, layero){
					var formdata=form.val("upd_test");
					
					$.post("role_list_update",formdata,function(d){
						 form.render();
						 table.reload("serlist", {
								url : "user_list",
								type : "post",
								async : true,
								where : {
									
								}
							});
						layer.close(index);
						})
					},
				btn2:function(index, layero){
					 form.render();
					layer.close(index);
					}
				});
			break;
			case 'deltool':
				var productArray = new Array();
				for (var i = 0; i < data.length; i++) {
					productArray[i] = data[i].user_id;
				}
				$.ajax({
					url : "user_list_deletes",
					type : "post",
					async : true,
					data : 
						{gktypeid:productArray},
					success : function(data) {
						table.reload("serlist", {
							url : "user_list",
							type : "post",
							async : true,
							where : {
								
							}
						});
					}
				}) 
				/* case 'see': */
		}
	});

		//删,行内删除
		table.on('tool(test)', function(obj) {
			var data=obj.data.user_id;
			if (obj.event == 'del') {
				$.ajax({
					url : "user_list_delete",
					type : "post",
					async : true,
					data : 
						{"user_id":data},
					success : function(data) {
						table.reload("serlist");
					}
				}) 
			}

		});
	</script>
</body>
</html>