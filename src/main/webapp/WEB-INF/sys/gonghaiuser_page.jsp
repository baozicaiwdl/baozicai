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
		lay-data="{url:'gonghaiuser_list',toolbar:'#tollbar', page:true ,id:'serlist'}"
		lay-filter="test">
		<thead>
			<tr>
				<th lay-data="{type:'checkbox'}"></th>
				<th lay-data="{field:'customerid'}">ID</th>
				<th lay-data="{field:'customername'}">姓名</th>
				<th lay-data="{field:'customerpassword'}">联系人</th>
				<th lay-data="{field:'customerphone'}">手机</th>
				<th lay-data="{field:'customerregistertime'}">邮箱</th>
				<th lay-data="{field:'customerlastlogintime'}">地址</th>
				<th lay-data="{field:'customerphone'}">公海人员</th>
				<th lay-data="{field:'customerregistertime'}">星级</th>
				<th lay-data="{field:'customerlastlogintime'}">新增时间</th>
				<th lay-data="{field:'customerlastlogintime'}">跟单人员</th>
				<th lay-data="{field:'customerstate' , width: 120,templet:'#titleTpl'}">状态</th>
				<th
					lay-data="{templet:function(d){
			if(d.customerstate==1){
			return $('#fhjf1').html();
			}else{
			return $('#fhjf2').html();
			}
			}}">操作</th>

				<!-- <th
					lay-data="{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}">
				</th> -->
			</tr>
		</thead>
	</table>
	</div>
	<div hidden class=" layui-form" id='update_user_div'>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item  ">
						<div class="layui-inline ">
							<label class="layui-form-label ">编号</label>
							<div class="layui-input-inline ">
								<input type='text' id='update_cusid' name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6 ">
				<div class="layui-form-item">
					<label class="layui-form-label">标签</label>
					<div class="layui-input-block" id="labelcus">
						
					</div>
				</div>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item   ">
						<div class="layui-inline ">
							<label class="layui-form-label ">用户</label>
							<div class="layui-input-inline ">
								<input type='text' id='update_cusname' name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6 ">
				<div class="grid-demo">
					<div class="layui-form-item" pane="">
						<label class="layui-form-label">信用度</label>
						<div class="layui-input-block">
							<div class="layui-bg-red  layui-form">
							<div class="layui-col-xs3   layui-bg-blue" style="margin-top:10px" id="adiv">极好</div>
							<div class="layui-col-xs3  layui-bg-blue " style="margin-top:10px" id="bdiv">较好</div>
							<div class="layui-col-xs3  layui-bg-blue " style="margin-top:10px" id="cdiv">一般</div>
							<div class="layui-col-xs3  layui-bg-blue " style="margin-top:10px" id="ddiv">差</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item  ">
						<div class="layui-inline ">
							<label class="layui-form-label ">状态</label>
							<div class="layui-input-inline ">
								<input type='text' id='update_cusstate' name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6  ">
				<div class="grid-demo">
					<div class="layui-form-item">
						<label class="layui-form-label">财产</label>
						<div class="layui-input-block">
							<div class="layui-bg-red  layui-form">
							<div class="layui-col-xs3  layui-bg-blue "  style="margin-top:10px" id="accdiv">不差钱</div>
							<div class="layui-col-xs3  layui-bg-blue "  style="margin-top:10px" id="bccdiv">一般有钱</div>
							<div class="layui-col-xs3  layui-bg-blue "  style="margin-top:10px" id="cccdiv">二般有钱</div>
							<div class="layui-col-xs3  layui-bg-blue "  style="margin-top:10px" id="dccdiv">三般有钱</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item   ">
						<div class="layui-inline ">
							<label class="layui-form-label ">手机</label>
							<div class="layui-input-inline ">
								<input type='text' id=update_cusphone name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6 ">
				<div class="grid-demo">
					<div class="layui-form-item">
						<label class="layui-form-label">活跃度</label>
						<div class="layui-input-block">
							<div class="layui-bg-red  layui-form">
							<div class="layui-col-xs3  layui-bg-blue" id="accddiv" style="margin-top:10px">不差活跃</div>
							<div class="layui-col-xs3  layui-bg-blue " id="bccddiv" style="margin-top:10px">一般活跃</div>
							<div class="layui-col-xs3  layui-bg-blue " id="cccddiv" style="margin-top:10px">二般活跃</div>
							<div class="layui-col-xs3  layui-bg-blue " id="dccddiv" style="margin-top:10px">三般活跃</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item  ">
						<div class="layui-inline ">
							<label class="layui-form-label ">密码</label>
							<div class="layui-input-inline ">
								<input type='text' id='update_cuspassword' name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6 ">
				<div class="grid-demo"></div>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item ">
						<div class="layui-inline ">
							<label class="layui-form-label ">注册时间</label>
							<div class="layui-input-inline ">
								<input type='text' id='update_cusresg' name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6 ">
				<div class="grid-demo"></div>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-col-xs4">
				<div class="grid-demo grid-demo-bg1">
					<div class="layui-form-item   ">
						<div class="layui-inline ">
							<label class="layui-form-label ">最后登录时间</label>
							<div class="layui-input-inline ">
								<input type='text' id='update_cuslasttime' name='id'
									autocomplete='off' class='layui-input' onfocus=this.blur()>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-xs2">
				<div class="grid-demo"></div>
			</div>
			<div class="layui-col-xs6 ">
				<div class="grid-demo"></div>
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
<a class="layui-btn layui-btn-xs layui-btn-danger " lay-event="edit23" >删除</a>

</script>
	<script type="textml" id="fhjf2">
<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="edit23" >删除</a>
</script>
</script>
	<script type="text/html" id="barDemo">
<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="edit2" >删除</a>
</script>
	<script type="text/html" id="tollbar">
<input type="text" name="title"  placeholder="请输入查询内容"  id="checktb" style="height:31px">
<button type="button" class="layui-btn layui-btn-sm">
  <i class="layui-icon ">&#xe615;</i> 查询
</button>
<button type="button" class="layui-btn layui-btn-sm">
  <i class="layui-icon">&#xe669;</i> 重置
</button>
<button type="button" class="layui-btn layui-btn-sm">
  <i class="layui-icon">&#xe654;</i> 新增
</button>
<button type="button" class="layui-btn layui-btn-sm  layui-btn-normal">
  <i class="layui-icon">&#xe642;</i> 修改
</button>
<button type="button" class="layui-btn layui-btn-sm layui-btn-danger">
  <i class="layui-icon">&#xe640;</i> 删除
</button>
<button type="button" class="layui-btn layui-btn-sm  layui-btn-warm">
  <i class="layui-icon">&#xe66f;</i> 分配业务员
</button>
<button type="button" class="layui-btn layui-btn-sm">
  <i class="layui-icon ">&#xe658;</i> 评价
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
				content:$("#insert_user_div"),
				btn:["保存","取消"],
				btn1:function(index, layero){
					//var formdata=form.val("insert_user_div");
					$.post("",formdata,function(d){
						 form.render();
						table.reoald('serlist');
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
					//var formdata=form.val("insert_user_div");
					$.post("",formdata,function(d){
						 form.render();
						table.reoald('serlist');
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
					url : "delgktypearry",
					type : "post",
					async : true,
					data : 
						{gktypeid:productArray},
					success : function(data) {
						table.reload("serlist");
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
					url : "delgktypearry",
					type : "post",
					async : true,
					data : 
						{gktypeid:productArray},
					success : function(data) {
						table.reload("serlist");
					}
				}) 
			}

		});
	</script>

</body>
</html>