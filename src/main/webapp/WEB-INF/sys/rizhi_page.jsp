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
		lay-data="{url:'cuslistdata',toolbar:'#tollbar', page:true ,id:'serlist'}"
		lay-filter="test">
		<thead>
			<tr>
				<th lay-data="{type:'checkbox'}"></th>
				<th lay-data="{field:'customerid'}">编号</th>
				<th lay-data="{field:'customername'}">用户</th>
				<th lay-data="{field:'customerpassword'}">密码</th>
				<th lay-data="{field:'customerphone'}">手机</th>
				<th lay-data="{field:'customerregistertime'}">注册时间</th>
				<th lay-data="{field:'customerlastlogintime'}">最后登录时间</th>
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
  <a class="layui-btn layui-btn-xs "  lay-event="detail" >拉黑</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit1" >查看</a>
<a class="layui-btn layui-btn-xs" lay-event="edit23" >删除</a>

</script>
	<script type="textml" id="fhjf2">
  <a class="layui-btn layui-btn-xs "  lay-event="detail" >拉白</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit1" >查看</a>
<a class="layui-btn layui-btn-xs" lay-event="edit23" >删除</a>
</script>
</script>
	<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" >拉黑/白</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit1" >查/改</a>
<a class="layui-btn layui-btn-xs" lay-event="edit2" >删除</a>
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
</script>
<%@ include file="../layui.jsp" %>
	<script type="text/javascript" charset="utf-8">
		 
		
		function checkuser() {
			console.log($("#checktb").val());
			var param = $("#checktb").val();
			table.reload("serlist", {
				url : "cuslistdata",
				type : "post",
				async : true,
				where : {
					"param" : param
				}
			});
		}
		
		
		//查/改
		table.on('tool(test)', function(obj) {
			console.log(obj.tr) //得到当前行元素对象
			console.log(obj.data) //得到当前行数据 
			var a = obj.data.customerid;
			var customername=obj.data.customername;
			var customerstate=obj.data.customerstate;
			var customerphone=obj.data.customerphone;
			var customerpassword=obj.data.customerpassword;
			var customerreg=obj.data.customerregistertime;
			var customerlasttime=obj.data.customerlastlogintime;
			var customerlabel=obj.data.customerlabel;
			var customercredit=obj.data.customercredit;
			var customeractivity=obj.data.customeractivity;
			var customerproperty=obj.data.customerproperty;
			$("#update_cusid").val(a);
			$("#update_cusname").val(customername);
			$("#update_cusstate").val(customerstate);
			$("#update_cusphone").val(customerphone);
			$("#update_cuspassword").val(customerpassword);
			$("#update_cusresg").val(customerreg);
			$("#update_cuslasttime").val(customerlasttime);
			if (obj.event == 'edit1') {
				var xinyong;
				var xinyongcss;
				var caichan;
				var caichancss;
				var hyd;
				var hydcss;
				console.log("-----"+obj.data.customerlabel);
				console.log(obj.event);
				$("#labelcus").append("<input type='checkbox' ay-skin='switch' lay-filter='test11' checked name='like[write]' title='"+customerlabel+"'  value="+customerlabel+" disabled='disabled'/>");
				form.render(); 
				//信用
				if(customercredit=="A"){
					$("#adiv").removeClass("layui-bg-blue");
					$("#adiv").addClass("layui-bg-red");
					xinyong="#adiv";
					xinyongcss="layui-bg-red";
				}else if(customercredit=="B"){
					$("#bdiv").removeClass("layui-bg-blue");
					$("#bdiv").addClass("layui-bg-red");
					xinyong="#bdiv";
					xinyongcss="layui-bg-red";
				}else if(customercredit=="C"){
					$("#cdiv").removeClass("layui-bg-blue");
					$("#cdiv").addClass("layui-bg-red");
					xinyong="#cdiv";
					xinyongcss="layui-bg-red";
				}else{
					$("#ddiv").removeClass("layui-bg-blue");
					$("#ddiv").addClass("layui-bg-red");
					xinyong="#ddiv";
					xinyongcss="layui-bg-red";
				}
				//财产
				if(customerproperty=="A"){
					$("#accdiv").removeClass("layui-bg-blue");
					$("#accdiv").addClass("layui-bg-red");
					caichan="#accdiv";
				}else if(customercredit=="B"){
					$("#bccdiv").removeClass("layui-bg-blue");
					$("#bccdiv").addClass("layui-bg-red");
					caichan="#bccdiv";
				}else if(customercredit=="C"){
					$("#cccdiv").removeClass("layui-bg-blue");
					$("#cccdiv").addClass("layui-bg-red");
					caichan="#cccdiv";
				}else{
					$("#dccdiv").removeClass("layui-bg-blue");
					$("#dccdiv").addClass("layui-bg-red");
					caichan="#dccdiv";
				}
				//活跃度
				if(customeractivity=="A"){
					$("#accddiv").removeClass("layui-bg-blue");
					$("#accddiv").addClass("layui-bg-red");
					hyd="#accddiv";
				}else if(customercredit=="B"){
					$("#bccddiv").removeClass("layui-bg-blue");
					$("#bccddiv").addClass("layui-bg-red");
					hyd="#bccddiv";
				}else if(customercredit=="C"){
					$("#cccddiv").removeClass("layui-bg-blue");
					$("#cccddiv").addClass("layui-bg-red");
					hyd="#cccddiv";
				}else{
					$("#dccddiv").removeClass("layui-bg-blue");
					$("#dccddiv").addClass("layui-bg-red");
					hyd="#dccddiv";
				}
				function caichan1(){
					alert("123");
					$("#accdiv").removeClass("layui-bg-blue");
					$("#accdiv").addClass("layui-bg-red");
				}
				function caichan2(){
					$("#accdiv").removeClass("layui-bg-blue");
					$("#accdiv").addClass("layui-bg-red");
				}
				function caichan3(){
					$("#accdiv").removeClass("layui-bg-blue");
					$("#accdiv").addClass("layui-bg-red");
				}
				function caichan4(){
					$("#accdiv").removeClass("layui-bg-blue");
					$("#accdiv").addClass("layui-bg-red");
				}
				layer.open({
					type : 1//这就是定义窗口类型的属性
					,
					title : "详情",
					shade : 0.3,
					offset : "0%",
					area : [ '100%', '100%' ],
					btn : '确定',
					content : $("#update_user_div") //实际开发中传入真实iframe地址
					,
					cancel : function() {
	                    // 你点击右上角 X 取消后要做什么
						$(caichan).removeClass("layui-bg-red");
						$(hyd).removeClass("layui-bg-red");
						$(xinyong).removeClass("layui-bg-red");
						$(caichan).addClass("layui-bg-blue");
						$(hyd).addClass("layui-bg-blue");
						$(xinyong).addClass("layui-bg-blue");
						 $("#selectaihao").empty();
						 $("#labelcus").empty();
						 form.render();
	                    
	                },
					yes : function(index, layero) {
						$(caichan).removeClass("layui-bg-red");
						$(hyd).removeClass("layui-bg-red");
						$(xinyong).removeClass("layui-bg-red");
						$(caichan).addClass("layui-bg-blue");
						$(hyd).addClass("layui-bg-blue");
						$(xinyong).addClass("layui-bg-blue");
						 $("#labelcus").empty();
						 form.render(); 
						 $("#selectaihao").empty();
						layer.close(index); //关闭弹层
					}
				});
				
			}else if(obj.event == 'detail'){
				if( $("#update_cusstate").val()=="1"){
					 $("#update_cusstate").val("0");
				}else{
					 $("#update_cusstate").val("1");
				}
				$.ajax({
					url : "updatecusstate",
					type : "post",
					data : {
						
						"customerstate" : $("#update_cusstate").val(),
						"customerid" :$("#update_cusid").val(),
						"param": "" ,
					},
					success : function(data) {
						 layer.msg("修改成功");
						table.reload("serlist"); 
					}
				})
			}else if(obj.event == 'edit23'){
				
				console.log("kkkk"+a);
				$.ajax({
					url:"delectcus",
					type:"post",
					data:{"param":a},
					success:function(data){
						 layer.msg("删除成功");
							table.reload("serlist"); 
					}
				})
			}

		});
	</script>

</body>
</html>