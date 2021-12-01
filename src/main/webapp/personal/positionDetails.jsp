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
		
		<title>千寻网</title>
		
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
					  
				      <ul class= "nav navbar-nav navbar-right">
						<li><a href="/company/companyLoginRegister.jsp">进入企业版</a></li>
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>
	
		<div class="container" style="background-color: #FFF2E3;margin-left: 68px;width: 1130px;">
			<br />
			<div class="row">
				<div class="col-lg-5"style="margin-left: 80px;">
					<span style="font-size: 26px;">Java中级开发工程师</span>
					<span style="color: red; font-size: 26px;">12K-20K</span>
					<br />
					<br />
					<span style="font-size: 18px;">上海&nbsp/&nbsp经验1-3年&nbsp/&nbsp本科及以上&nbsp/&nbspJava&nbsp/&nbsp全职</span>
					<br />
					<span style="font-size: 14px;border: 1px darkgray solid;"><span style="color: lightseagreen;">软件服务|咨询</span></span>
					<span style="font-size: 14px;border: 1px darkgray solid; margin-left:4px;"><span style="color: lightseagreen;">JAVA</span></span>
					<span style="font-size: 14px;border: 1px darkgray solid; margin-left:4px;"><span style="color: lightseagreen;">Spring</span></span>
					<span style="font-size: 14px;border: 1px darkgray solid; margin-left:4px;"><span style="color: lightseagreen;">MySQL</span></span>
					<span style="font-size: 14px;border: 1px darkgray solid; margin-left:4px;"><span style="color: lightseagreen;">Web前端开发</span></span>
					<br />
					<br />
					<br />
					<span style="font-size: 16px; color: gray;">捷箭科技研发部</span>
					<span style="font-size: 14px; color: darkgray; margin-left: 14px;">2021-11-23  发布于千寻网</span>
				</div>
				<div class="col-lg-6" style="margin-top: 40px;">
					<button class="vi-button vi-button--primary" style="background-color: lightseagreen;">
					 <span><strong style="font-size: 20px; color: white;">投简历</strong></span>
					</button>
					<input type="radio" style="margin-left: 80px" /><span style="font-size: 14px; margin-left: 4px;">在线简历</span>
					<br />
					<input type="radio" style="margin-left: 186px;" /><span style="font-size: 14px; margin-left: 4px;">无</span>
					<br />
					<button class="vi-button vi-button--primary" style="margin-left: 180px;">
					 <span>上传附件简历</span>
					</button>
				</div>
			</div>
		</div>

		<br />
		<br />
		
		<div class="container" style=" background-color: white;margin-left: 68px;width: 1130px;">
			<div class="row" >
				<div class="col-lg-8" >
					<br />
						<span><strong style="font-size: 16px;">职位描述:</strong></span>
						<br />
						<br />
						<span>岗位职责：1、负责公司Java产品系统设计、开发工作；2、负责开发系统功能模块；3、负责业务逻辑设计、编码以及BUG修改、模块集成；任职要求：1、大学及以上学历，2年以上Java开发经验，一定英文基础，能够熟练阅读英文资料；2、技术要求：精通Java语言，熟练使用Struts、Spring、Spring.cloud等主流框架；3、了解JavaScript，能简单使用Vue.JS, JQuery、ExtJSs、Dojo、HTML、CSS等前端开发技术；4、熟练使用Linux操作系统，能编写简单的脚本；5、熟悉Sql server、MySQL等数据库；6、对微服务有一定了解，有相关经验更佳；7、责任心强，具有较强的逻辑分析和表达能力、较强的学习能力、理解力和团队合作精神，能够顺畅交流；</span>
						<br />
						<br />
						<span><strong style="font-size: 16px;">工作地址:</strong></span>
						<br />
						<br />
						<span>上海 - 浦东新区 - 张江- 海趣园2号楼202室</span>
						<br />
						<br />
						<span><strong style="font-size: 16px;">职位发布者:</strong></span>	
						<br />
						<br />
						<img style="margin-left: 50px;" alt="" src="//www.lgstatic.com/thumbnail_120x120/i/image2/M01/0E/8C/CgoB5lyhgdiAN-4AAACeGEp-ay0931.png" width="60" height="60">
						<span style="font-size: 18px;margin-left: 10px;">
							James+Qian
							<br />	
							<span style="color: darkseagreen;font-size: 14px;">CEO+联合创始人本周·活跃</span>
						</span>
						<br />
						<br />
						<br />
						<span><strong>千寻安全提示</strong></span>
						<br />
						<br />
						<span style="font-size: 10px; color: lightseagreen;">· 求职中如遇招聘方扣押证件、要求提供担保或收取财物、强迫入股或集资、收取不正当利益或其他违法情形，请立即举报</span>
						<br />
						<span style="font-size: 10px; color: lightseagreen;">· 如遇岗位要求海外工作，请提高警惕，谨防诈骗</span>
				</div>
				<div class="col-lg-3" style="margin-left: 70px; margin-top: 40px;">
					<img style="border: 2px solid lightgrey;" class="b2" src="//www.lgstatic.com/thumbnail_160x160/i/image6/M01/5F/BB/Cgp9HWGCPoyAVHUUAAA-OcTvpFM099.jpg" width="96" height="96" alt="上海捷箭信息科技有限公司">
					<br />
					<a style="cursor: pointer; text-decoration: none;margin-left: 10px;"><span style="color: black; font-size: 18px;">捷箭科技</span></a>
					<br />
					<br />
					<span style="margin-left: 10px;"><strong>移动互联网,企业服务</strong></span>
					<br />
					<br />
					<!--  -->
<!-- 					<span style="margin-left: 10px;"><strong>A轮</strong></span>
					<br />
					<br /> -->
					<span style="margin-left: 10px;"><strong>50-150人</strong></span>
					<br />
					<br />
					<a style="cursor: pointer; text-decoration: none;margin: 10px;">http://www.parrowtech.com</a>
				</div>
			</div>
		</div>
					<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />		
		<script src="js/ytmenu.js"></script>
	</body>
	
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.horizontalmenu.js"></script>
	
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
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
