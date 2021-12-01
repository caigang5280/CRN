<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>修改个人信息</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/default.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css" />
		<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
		<link href="${pageContext.request.contextPath}/css/jquery.horizontalmenu.css" rel="stylesheet">
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
		
		.form-control{
			width: 300px;
		}
		
		.vi-button.vi-button--primary:focus, .vi-button.vi-button--primary:hover {
		    background: #33c2a1;
		    border-color: #33c2a1;
		    color: #fff;
		}
		
		.vi-button {
		    display: inline-block;
		    -webkit-box-sizing: border-box;
		    box-sizing: border-box;
		    line-height: 1;
		    white-space: nowrap;
		    cursor: pointer;
		    background: #fff;
		    border: 1px solid #dcdfe6;
		    color: #606266;
		    text-align: center;
		    outline: 0;
		    margin: 0;
		    -webkit-transition: .1s;
		    transition: .1s;
		    padding: 12px 20px;
		    font-size: 14px;
		    border-radius: 4px;
		}
		label.error{
			color: red;
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
				
				<div class="col-lg-8 col-md-6 col-xs-6" style="margin-top: 30px;">
					<form action="/personal?method=updateInfo" class="form-horizontal" id="personalUpdateInfo" method="post">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label" >用户名</label>
					    <div class="col-sm-10">
					      <input type="text" style="width: 250px" class="form-control" id="inputEmail3" placeholder="Name" name="username" id="username" value="${personalUser.username}">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label" >现住地址</label>
					    <div class="col-sm-10">
					      <input type="text" style="width: 250px" class="form-control" id="inputPassword3" placeholder="Address" name="address" value="${personalUser.address}">
					    </div>
						</div>
						<div class="form-group">
						  <label for="inputPassword3" class="col-sm-2 control-label" >学历</label>
						  <div class="col-sm-10">
						    <input type="text" style="width: 250px" class="form-control" id="inputPassword4" placeholder="Education" name="education" value="${personalUser.education}">
						  </div>
						</div>
						<div class="form-group">
						  <label for="inputPassword3" class="col-sm-2 control-label" >联系方式</label>
						  <div class="col-sm-10">
						    <input type="text" style="width: 250px" class="form-control" id="inputPassword4" placeholder="Telephone Number" name="phone" value="${personalUser.phone}">
						  </div>
						</div>
					  <div style="margin-left: 130px; margin-top: 30px;">
							<div class="vi-form-item__content" >
								<button type="submit" class="vi-button vi-button--primary">
								 <span>保存</span>
								</button>
								<button type="reset" class="vi-button vi-button--primary" style="margin-left: 80px;">
								 <span>取消</span>
								</button>
							</div>
					  </div>
					</form>
				</div><!-- col-lg-8 -->
			</div><!-- row -->
		</div><!-- /container -->

	<br>
	<br>
	<br>
	<br>

	<jsp:include page="/floor.jsp"></jsp:include>


	</body>
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<!-- 2.引入校验插件 -->
	<script src="${pageContext.request.contextPath}/validate/jquery.validate.min.js"></script>

	<script src="${pageContext.request.contextPath}/validate/validate.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.horizontalmenu.js"></script>

<%--	<script src="${pageContext.request.contextPath}/js/ytmenu.js"></script>--%>
	<script>
		$(function () {
		  $('.ah-tab-wrapper').horizontalmenu({
		    itemClick : function(item) {
		      $('.ah-tab-content-wrapper .ah-tab-content').removeAttr('data-ah-tab-active');
		      $('.ah-tab-content-wrapper .ah-tab-content:eq(' + $(item).index() + ')').attr('data-ah-tab-active', 'true');
		      return false; //if this 	finction return true then will be executed http request
		    }
		  });
		});
	</script>
</html>
