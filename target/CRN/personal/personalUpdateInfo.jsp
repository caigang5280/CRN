<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- 声明文档的编码集 -->
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		
		<title>千寻招聘网</title>
		
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
		
		<link href="${pageContext.request.contextPath}/css/jquery.horizontalmenu.css" rel="stylesheet">
		
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		
		<style>
			/* 整体 */
			body{
				background-color: rgb(246,246,248);
			}
			/* 查看更多按钮 */
			#selectmore{
				color: green;
				border: 1px solid green;
			}
			/* 热门企业logo */
			#hotimg{
				height: 100px;
				width: 100px;
			}
			/* 热门企业按钮 */
			#hotbtn{
				width: 110px;
				height:25px;
				background-color: white;
				border: 1px solid;
				
			}
			
			/* 搜索热门职位 */
			#searchhotposition{
				margin-left: 20px;
				color: #00b38a;
			}
			
			#recommendposition{
				font-size: 20px;
				
			}
			#recommendbottom{
				color: gray;
			}
			#recommendimg{
				height: 40px;
			}
			#recommendsalary{
				color: red;
			}
			#recomendmiddle{
				color: gray;
			}
			
			li.paral{
				float: left;
				margin-left: 10px;
				list-style: none;
			}
			
			.table1 td{
				padding: 10px;
			}
		</style>
		
		
	</head>
	<style>
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
				        <li><a href="/personal/personalPosition.jsp">职位</a></li>
						<!-- 求职详细 -->
						<li><a href="/personal/personalJobDetails.jsp">求职详细</a></li>
				      </ul>
					  
				      <ul class="nav navbar-nav navbar-right">
						<!-- 查看我的简历 -->
				        <li class="active"><a href="/personal/personalUpdateInfo.jsp">我的简历</a></li>
						<!-- 用户名 -->
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户名 <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="/personal/personalInfo.jsp">修改个人信息</a></li>
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
		
		<!-- 提示信息 -->
		<div class="container">
			<div class="row" style="text-align: left;">
				<span style="margin-left: 50px; color: rgb(255,138,121);">*根据法律规定，进行网络求职应如实提供个人信息</span>
				
				
			</div>
			<br>
			<div style="background-color: rgb(255,250,233); padding: 0px; border:1px solid orange;border-radius: 3px;">
				<div class="row" style="text-align: left; margin-top: 10px;">
					<span style="margin-left: 50px; ">你当前的简历完善度为:84%，完善下列信息会提高求职成功率</span>
				</div>
				<br>
				<div class="row" style="text-align: left;">
					<span style="margin-left: 50px; margin-bottom:10px; ">个人优势  去完善</span>
				</div>
			</div>
			
		</div>
		<br><br>
		
		
		
		
		
		<!-- 个人信息 -->
		<div class="container" style="background-color: rgb(248,249,251);">
			<div class="row" style="text-align: left;margin: 20px;float:left" >
				
				<img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" alt="..." class="img-circle">
				
			</div>
			
			<div class="" style="float:left">
					<h4 >&nbsp;&nbsp;&nbsp;&nbsp;戚一鸣</h4>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						<li>淮北师范大学</li>
						<li>本科.统招</li>
						<li>2022年毕业</li>
						<li>21岁</li>
						<li>15655444543</li>
						<li>1205509129@qq.com</li>
					</div>
			</div>
			
			<div class="row" style="text-align: left;margin: 20px;float:left" >
				
				<button name="btn1" type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" style="position: absolute; margin-left: 300px;">
				  编辑
				</button>
				
			</div>
			
			
			
			<br>
		</div>
		
		<form action="#" method="get"  name="form1" style="display: none;" >
			<table align="center" class="table1" >
				<tr>
					<td>
						<fieldset>
							<legend>编辑个人资料</legend>
							<table>
								<tr>
									<td align="right" >姓名</td>
									<td><input type="text" name="name" placeholder="" /></td>
									<td align="right">性别</td>
									<td>
										<input type="radio" name="男" />男
										<input type="radio" name="女" />女
									</td>
									
								</tr>
								
								<tr>
									<td align="right">手机号码</td>
									<td><input type="input" name="repwd" /></td>
									<td align="right">邮箱</td>
									<td><input type="email" name="email" /></td>
								</tr>
								
								
								<tr>
									<td align="right">生日</td>
									<td><input type="date" name="birthday" /></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				
				
				<tr>
					<td align="center">
						<input type="submit" value="提交您的资料"/>
						<input type="reset" value="重新填写您的资料"/>
					</td>
				</tr>
				
			</table>
		</form>
		
		<br />
		<br />
	
		<!-- 个人优势 -->
		
		
		<div class="container" style="background-color: rgb(248,249,251);">
			
			<div class="" style="float:left">
					<h3>个人优势</h3>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						<div style="border: 1px dotted grey; border-radius: 5px; width: 600px; height: 50px; background-color: rgb(248,249,251); ">
							90%的招聘者非常关注候选人的个人优势&nbsp;<a href="#">立即添加</a>
						</div>
						
					</div>
			</div>
			
			<br>
		</div>
		
		
		<br />
		<br />
		
		<!-- 求职期望 -->
		<div class="container" style="background-color: rgb(248,249,251);">
			
			<div class="" style="float:left">
					<h3>求职期望</h3>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						
						
						<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    JAVA工程师 <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu">
						    <li><a href="#">JAVA工程师</a></li>
						    <li><a href="#">JAVA工程师</a></li>
						    <li><a href="#">JAVA工程师</a></li>
						  </ul>
						</div>
						
						<div class="btn-group">
						  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    上海 <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu">
						    <li><a href="#">上海</a></li>
						    <li><a href="#">上海</a></li>
						    <li><a href="#">上海</a></li>
						  </ul>
						</div>
						
						<div class="btn-group">
						  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    10k-20k <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu">
						    <li><a href="#">10k-20k</a></li>
						    <li><a href="#">10k-20k</a></li>
						    <li><a href="#">10k-20k</a></li>
						    <li><a href="#">10k-20k</a></li>
						  </ul>
						</div>
					</div>
					
					<button  type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" style="position: absolute; margin-left: 300px;">
					  修改
					</button>
			</div>
			
			<br>
		</div>
		
		<br />
		<br />
		
		
		<!-- 工作经历 -->
		<div class="container" style="background-color: rgb(248,249,251);">
			
			<div class="" style="float:left">
					<h3>工作经历</h3>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						<button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" style="position: absolute; margin-left: 550px; margin-top: -50px;">
							修改
						</button>
					</div>
					
			</div>
			
			<br>
		</div>
		
		<br />
		<br />
		
		
		<!-- 项目经历 -->
		<div class="container" style="background-color: rgb(248,249,251);">
			
			<div class="" style="float:left">
					<h3>项目经历</h3>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						<button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" style="position: absolute; margin-left: 550px; margin-top: -50px;">
							修改
						</button>
					</div>
			</div>
			<br>
		</div>
		
		<br />
		<br />
		
		
		<!-- 教育经历 -->
		<div class="container" style="background-color: rgb(248,249,251);">
			
			<div class="" style="float:left">
					<h3>教育经历</h3>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						<button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" style="position: absolute; margin-left: 550px; margin-top: -50px;">
							修改
						</button>
					</div>
					
			</div>
			
			<br/>
			<br/>
			<br/>
			<br/>
			
			<!-- 添加模块 -->
			<div  name="education">
				<div class="row" style="text-align: left;margin: 20px;position: absolute; margin-left: 20px; margin-bottom: 20px;" >
					
					<img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" alt="..." class="img-circle">
					
				</div>
				
				<div class="" style="float:left">
						<h4>&nbsp;&nbsp;&nbsp;&nbsp;淮北师范大学</h4>
						
						<div class="row" style="text-align: left;margin: 10px;float:left" >
							
							<li  class="paral">本科.统招</li>
							<li  class="paral">2022年毕业</li>
							<li  class="paral">21岁</li>
						</div>
				</div>
				
				<br />
				<br />
				<br />
				<br />
				<br />
			</div>
			
		</div>
		
		<br />
		<br />
		
		
		
		<div class="container" style="background-color: rgb(248,249,251);">
			
					<h4 >&nbsp;&nbsp;&nbsp;&nbsp;设计作品</h4>
					
					<div class="row" style="text-align: left;margin: 20px;float:left" >
						<div id="" style="border: 1px dotted grey; border-radius: 5px; width: 200px; height: 150px; background-color: rgb(248,249,251); ">
							
							<a href="#" style="position: absolute; margin-left: 65px; margin-top: 60px;">上传图片</a>
						</div>
						
					</div>
			<br>
		</div>
		
		<!--友情链接-->
		<div class="container" style="margin-top: 15px;">
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
		
	</body>
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.horizontalmenu.js"></script>
	
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	
	<script>
		$(function () {
		  $('.ah-tab-wrapper').horizontalmenu({
		    itemClick : function(item) {
		      $('.ah-tab-content-wrapper .ah-tab-content').removeAttr('data-ah-tab-active');
		      $('.ah-tab-content-wrapper .ah-tab-content:eq(' + $(item).index() + ')').attr('data-ah-tab-active', 'true');
		      return false; //if this finction return true then will be executed http request
		    }
		  });
		});
		
		
		
		var btn1 = document.getElementsByName("btn1")[0];
		var form1 = document.getElementsByName("form1")[0];
		btn1.onclick=function(){
			form1.style.display="initial";
		}
	</script>
	
	

</html>
