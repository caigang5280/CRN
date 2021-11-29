<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Simple YouTube Menu Effect</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/default.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css" />
		<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
		
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
	</head>
	<style>
		body{
			background-color: rgb(246,246,248);
		}
		
		.side{
			width: 80px;
		}
		
		.s1{
			margin-left: 16px;
		}
	</style>
	<body>
		
		<!-- 导航栏 -->
		<div class="container">
			<div class="row" style="margin: 5px;border: none;">
				<nav class="navbar navbar-inverse">
				  <div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header"style="margin: 5px;border: none;" >
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
					  <!-- logo图片 -->
					  <img src="${pageContext.request.contextPath}/img/Logo.png" style="width: 30px;height: 30px;"/>
					  <!-- 网站名称 -->
					  <span id="title"style="color: #00b38a; font-size: 25px;  margin-top: 15px;">千寻网</span>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      
					  <ul class="nav navbar-nav">
						  <!-- location地点选择 -->
						  <li class="dropdown">
						    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">地点 <span class="caret"></span></a>
						    <ul class="dropdown-menu">
						      <li><a href="#">上海</a></li>
						      <li><a href="#">无锡</a></li>
						      <li><a href="#">北京</a></li>
						      <!-- <li role="separator" class="divider"></li> -->
						      <li><a href="#">杭州</a></li>
						      <li><a href="#">苏州</a></li>
						    </ul>
						   </li>
						 <!-- 跳转至首页 -->
				        <li ><a href="/personal/personalHome.jsp">首页 <span class="sr-only">(current)</span></a></li>
						<!-- 跳转至查看所有职位 -->
				        <li ><a href="/personal/personalPosition.jsp">职位</a></li>
						<!-- 求职详细 -->
						<li><a href="/personal/personalJobDetails.jsp">求职详细</a></li>
				      </ul>
					  
				      <ul class="nav navbar-nav navbar-right">
						<!-- 查看我的简历 -->
				        <li><a href="/personal/personalUpdateInfo.jsp">我的简历</a></li>
						<!-- 用户名 -->
				        <li class="dropdown active">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户名 <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li ><a href="/personal/personalInfo.jsp">修改个人信息</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="/personal/personalLoginRegister.jsp">退出账号</a></li>
				          </ul>
				        </li>
						<li><a href="/personal/companyLoginRegister.jsp">进入企业版</a></li>
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>
		
		<div class="container" >	
			<div class="row" >
				<div class="col-lg-4 col-md-6 col-xs-6">
					<div class="side">
						<nav class="dr-menu">
							<div class="dr-trigger"><span class="dr-icon dr-icon-menu"></span><a class="dr-label">个人信息</a></div>
							<ul>
								<li><a class="dr-icon dr-icon-user" href="/personal/personalModifyInfo.html" style="color: black;">修改个人信息</a></li>
								<li><a class="dr-icon dr-icon-settings" href="/personal/personalModifyPwd.html" style="color: black;">修改账户密码</a></li>
								<li><a class="dr-icon dr-icon-switch" href="#" style="color: black;">退出</a></li>
							</ul>
						</nav>
					</div><!-- side -->
				</div><!-- col-lg-4 -->
				
				<div class="col-lg-8 col-md-6 col-xs-6">
						<img style="margin-left: 100px;" data-v-7538faf0="" src="https://www.lgstatic.com/images/myresume/default_headpic.png" width="100" height="100" class="avatar_img">
						<br />
						<br />
						<span style="margin-left: 80px;">
							<strong style="color: orange;">
								姓名:张三
							</strong>
						</span>
						<span style="margin-left: 30px;">
							<strong style="color: orange;">
								性别:男
							</strong>
						</span>
						<br />
						<br />
						<span class="s1" style="font-size: 10px;color: darkgray;">* 此信息用于站内言职社区功能，不会同步修改简历</span>
				</div><!-- col-lg-8 -->
			</div><!-- row -->
		</div><!-- /container -->
		
				<!-- 友情链接 -->
				<div class="container"><!-- /container -->
					<div class="row">
						<div class=bottom">
							 <!--友情链接-->
							 <div class="container" style="margin-top: 240px;">
							 	<div class="row" style="text-align: center;">
							 		<p>
							 			<a href="#" style="margin-left: 20px;">关于我们</a>
							 			<a href="#"style="margin-left: 20px;">联系我们</a>
							 			<a href="#"style="margin-left: 20px;">招贤纳士</a>
							 			<a href="#"style="margin-left: 20px;">法律声明</a>
							 			<a href="#"style="margin-left: 20px;">友情链接</a>
							 			<a href="#"style="margin-left: 20px;">服务声明</a>
							 			<a href="#"style="margin-left: 20px;">广告声明</a>
							 		</p>
							 	</div>
							 	<div class="row" style="text-align: center;">
							 		<p>
							 			Copyright © 20021-2021 千寻招聘网 版权所有
							 		</p>
							 	</div>
							 </div>
						</div>
					</div>
				</div><!-- /container -->
			
		<script src="${pageContext.request.contextPath}/js/ytmenu.js"></script>
	</body>
</html>