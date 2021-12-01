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
	<jsp:include page="/personalHeader.jsp"></jsp:include>

		<div class="container" >	
			<div class="row" >
				<div class="col-lg-4 col-md-6 col-xs-6">
					<div class="side">
						<nav class="dr-menu">
							<div class="dr-trigger"><span class="dr-icon dr-icon-menu"></span><a class="dr-label">个人信息</a></div>
							<ul>
								<li><a class="dr-icon dr-icon-user" href="/personal/personalModifyInfo.jsp" style="color: black;">修改个人信息</a></li>
								<li><a class="dr-icon dr-icon-settings" href="/personal/personalModifyPwd.jsp" style="color: black;">修改账户密码</a></li>
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
								姓名:${personalUser.username}
							</strong>
						</span>
						<span style="margin-left: 30px;">
							<strong style="color: orange;">
								邮箱:${personalUser.email}
							</strong>
						</span>
						<br />
						<br />
						<span class="s1" style="font-size: 10px;color: darkgray;">* 此信息用于站内言职社区功能，不会同步修改简历</span>
				</div><!-- col-lg-8 -->
			</div><!-- row -->
		</div><!-- /container -->

	<jsp:include page="/floor.jsp"></jsp:include>

		<script src="${pageContext.request.contextPath}/js/ytmenu.js"></script>
	</body>
</html>