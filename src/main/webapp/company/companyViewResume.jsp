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
		
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/css/jquery.horizontalmenu.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
		
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.horizontalmenu.css" />
		<style>
				/* 整体 */
				body{
					background-color: rgb(246,246,248);
				}
		</style>

	</head>

	<body>

	<jsp:include page="/companyHeader.jsp"></jsp:include>

		<!-- 搜索栏 -->
		<div class="container">
			<div class="row" style="text-align: left; margin-left: 10px;" >
			  <div class="col-lg-10" style="text-align: left;">
			    <div class="input-group" style="text-align: left;">
			      <input type="text" class="form-control" placeholder="请输入公司名搜索..."style="height: 40px;">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button"
					style="height: 40px;width: 100px;background-color: #00b38a;color: white;">搜索</button>
			      </span>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			</div><!-- /.row -->
		</div>
		<br />
		
		<div class="content">
	        <div class="ah-tab-wrapper">
				<div class="row" style="margin-left: 40px;">
	            <div class="ah-tab">
	                <a class="ah-tab-item" data-ah-tab-active="true" href="">人才简历</a>
	                <a class="ah-tab-item" href="">企业邀请</a>
					</div>
	            </div>
	        </div>
	        <div class="ah-tab-content-wrapper">
	            <div class="ah-tab-content" data-ah-tab-active="true">
	                <!-- 职位工作筛选 -->
	                <div class="container">
	                	<div class="row" style="margin-left: 25px;">
	                		<div class="col-lg-10 col-xs-10">
	                		<!-- 工作经验 button -->
	                		<div class="btn-group">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    工作经验 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">不限</a></li>
	                		    <li><a href="#">在校/应届</a></li>
	                		    <li><a href="#">3年及以下</a></li>
	                		    <li><a href="#">3-5年</a></li>
	                		    <li><a href="#">5-10年</a></li>
	                		    <li><a href="#">10年以上</a></li>
	                			<!-- 分割线 -->
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		<!-- 学历要求 button -->
	                		<div class="btn-group">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    学历要求 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">不限</a></li>
	                		    <li><a href="#">大专</a></li>
	                		    <li><a href="#">本科</a></li>
	                		    <li><a href="#">硕士</a></li>
	                		    <li><a href="#">博士</a></li>
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		<!-- 薪资要求 button -->
	                		<div class="btn-group">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    薪资要求 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">3k以下</a></li>
	                		    <li><a href="#">3k-6k</a></li>
	                		    <li><a href="#">6k-10k</a></li>
	                		    <li><a href="#">10k-15k</a></li>
	                		    <li><a href="#">15k-20k</a></li>
	                		    <li><a href="#">20k-25k</a></li>
	                		    <li><a href="#">25k-30k</a></li>
	                		    <li><a href="#">30k及以上</a></li>
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		<!-- 工作地点 button -->
	                		<div class="btn-group hidden-xs">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    工作地点 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">不限</a></li>
	                		    <li><a href="#">北京</a></li>
	                		    <li><a href="#">上海</a></li>
	                		    <li><a href="#">深圳</a></li>
	                		    <li><a href="#">广州</a></li>
	                		    <li><a href="#">武汉</a></li>
	                		    <li><a href="#">无锡</a></li>
	                		    <li><a href="#">苏州</a></li>
	                		    <li><a href="#">南京</a></li>
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		</div><!-- col-lg-10 -->
	                		
	                		<div class="col-lg-2 col-xs-2">
	                			<a href="#" />清空筛选条件
	                		</div>
	                		
	                	</div> <!-- row -->
	                </div> <!-- container -->
	                
	                <!-- 投递简历详情 -->
	                <div class="container">
	                	<div class="row">
	                		<!-- 表格左 边留白 -->
	                			<div class="col-lg-1"></div>
	                				<!-- 表格正文 -->
	                				<div class="col-lg-10 col-xs-12">
	                					<table class="table table-hover" id="table1">
	                						<br />
	                						
	                						<!-- 不会用 -->
	                						  <!-- On rows -->
	                <!-- 						  <tr class="info">序号</tr>
	                						  <tr class="info">公司名</tr>
	                						  <tr class="active">Logo</tr>
	                						  <tr class="active">...</tr>
	                						  <tr class="active">...</tr>
	                						  <tr class="active">...</tr> -->
	                						  
	                						  <!-- On cells (`td` or `th`) -->
	                						  <tr>
	                							<td class="info">序号</td>
	                							<td class="info">投放日期</td>
	                							<td class="info">投放公司</td>
	                							<td class="info">公司已查阅</td>
	                							<td class="info">收到回信</td>
	                							<td class="info"></td>
	                							<td class="info"></td>
	                							<td class="info">查看详情</td>
	                							
	                						  </tr>
	                						  
	                						  
	                						  <tr>
	                						  	<td class="active">1</td>
	                						  	<td class="active">投放日期</td>
	                						  	<td class="active">投放公司</td>
	                						  	<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                						  	<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                							<td class="active"></td>
	                							<td class="active"></td>
	                						  	<td class="active"><button href="#" style="background-color: #00b38a;color: white;">查看简历</button></td>
	                						  </tr>
	                						  
	                						  
	                						<tr>
	                							<td class="active">2</td>
	                							<td class="active">投放日期</td>
	                							<td class="active">投放公司</td>
	                							<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                							<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                							<td class="active"></td>
	                							<td class="active"></td>
	                							<td class="active"><button href="#" style="background-color: #00b38a;color: white;">查看简历</button></td>
	                						</tr>  
	                					</table>
	                		</div> <!-- col-lg-10 col-xs-10 -->
	                	<!-- 表格右边留白 -->
	                	<div class="col-lg-1"></div>
	                	</div><!-- 职位工作表container -->
	                </div>
	                
	            </div>
	            
				<div class="ah-tab-content">
	                <!-- 职位工作筛选 -->
	                <div class="container">
	                	<div class="row" style="margin-left: 25px;">
	                		<div class="col-lg-10 col-xs-10">
	                		<!-- 工作经验 button -->
	                		<div class="btn-group">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    工作经验 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">不限</a></li>
	                		    <li><a href="#">在校/应届</a></li>
	                		    <li><a href="#">3年及以下</a></li>
	                		    <li><a href="#">3-5年</a></li>
	                		    <li><a href="#">5-10年</a></li>
	                		    <li><a href="#">10年以上</a></li>
	                			<!-- 分割线 -->
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		<!-- 学历要求 button -->
	                		<div class="btn-group">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    学历要求 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">不限</a></li>
	                		    <li><a href="#">大专</a></li>
	                		    <li><a href="#">本科</a></li>
	                		    <li><a href="#">硕士</a></li>
	                		    <li><a href="#">博士</a></li>
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		<!-- 薪资要求 button -->
	                		<div class="btn-group">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    薪资要求 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">3k以下</a></li>
	                		    <li><a href="#">3k-6k</a></li>
	                		    <li><a href="#">6k-10k</a></li>
	                		    <li><a href="#">10k-15k</a></li>
	                		    <li><a href="#">15k-20k</a></li>
	                		    <li><a href="#">20k-25k</a></li>
	                		    <li><a href="#">25k-30k</a></li>
	                		    <li><a href="#">30k及以上</a></li>
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		<!-- 工作地点 button -->
	                		<div class="btn-group hidden-xs">
	                		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                		    工作地点 <span class="caret"></span>
	                		  </button>
	                		  <ul class="dropdown-menu">
	                		    <li><a href="#">不限</a></li>
	                		    <li><a href="#">北京</a></li>
	                		    <li><a href="#">上海</a></li>
	                		    <li><a href="#">深圳</a></li>
	                		    <li><a href="#">广州</a></li>
	                		    <li><a href="#">武汉</a></li>
	                		    <li><a href="#">无锡</a></li>
	                		    <li><a href="#">苏州</a></li>
	                		    <li><a href="#">南京</a></li>
	                		    <!-- <li role="separator" class="divider"></li>
	                		    <li><a href="#">Separated link</a></li> -->
	                		  </ul>
	                		</div><!-- btn-group -->
	                		
	                		</div><!-- col-lg-10 -->
	                		
	                		<div class="col-lg-2 col-xs-2">
	                			<a href="#" />清空筛选条件
	                		</div>
	                		
	                	</div> <!-- row -->
	                </div> <!-- container -->
	                
	                <!-- 投递简历详情 -->
	                <div class="container">
	                	<div class="row">
	                		<!-- 表格左 边留白 -->
	                			<div class="col-lg-1"></div>
	                				<!-- 表格正文 -->
	                				<div class="col-lg-10 col-xs-12">
	                					<table class="table table-hover">
	                						<br />
	                						
	                						<!-- 不会用 -->
	                						  <!-- On rows -->
	                <!-- 						  <tr class="info">序号</tr>
	                						  <tr class="info">公司名</tr>
	                						  <tr class="active">Logo</tr>
	                						  <tr class="active">...</tr>
	                						  <tr class="active">...</tr>
	                						  <tr class="active">...</tr> -->
	                						  
	                						  <!-- On cells (`td` or `th`) -->
	                						  <tr>
	                							<td class="info">序号</td>
	                							<td class="info">人才姓名</td>
	                							<td class="info">招聘信息</td>
	                							<td class="info">处理状态</td>
	                							<td class="info">岗位信息</td>
	                							<td class="info">邀请日期</td>
	                							<td class="info"></td>
	                							<td class="info">查看详情</td>
	                							
	                						  </tr>
	                						  
	                						  
	                						  <tr>
	                						  	<td class="active">1</td>
	                						  	<td class="active">李四</td>
	                						  	<td class="active">鬼鬼</td>
	                						  	<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                						  	<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                							<td class="active"></td>
	                							<td class="active"></td>
	                						  	<td class="active"><button href="#" style="background-color: #00b38a;color: white;">查看简历</button></td>
	                						  </tr>
	                						  
	                						  
	                						<tr>
	                							<td class="active">2</td>
	                							<td class="active">张三</td>
	                							<td class="active">经理</td>
	                							<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                							<td class="active">
	                								<div class="mui-input-row mui-checkbox ">
	                									<label></label>
	                									<input name="Checkbox" type="checkbox" >
	                								</div>
	                							</td>
	                							<td class="active"></td>
	                							<td class="active"></td>
	                							<td class="active"><button href="#" style="background-color: #00b38a;color: white;">查看简历</button></td>
	                						</tr>  
	                					</table>
	                		</div> <!-- col-lg-10 col-xs-10 -->
	                	<!-- 表格右边留白 -->
	                	<div class="col-lg-1"></div>
	                	</div><!-- 职位工作表container -->
	                </div>
	                
	            </div>
	        </div>
	    </div>
		
		<div class="container">
			<div class="row"style="background-color: white;height: 100px;">
				<div class="col-lg-1"></div>
				<div class="col-lg-10" >
					<img src="${pageContext.request.contextPath}/img/Logo.png" style="width: 80px;margin-top: 10px;"/>
		
					<span style="font-size: 30px;color: #000000;">千寻网——大家喜欢的招聘求职平台</span>
					
				</div>
				
			</div>
		</div>

	<jsp:include page="/floor.jsp"></jsp:include>

	</body>
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src=".${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.horizontalmenu.js"></script>
	
	<script src="${pageContext.request.contextPath}/新建文件夹/jQuery响应式Tabs选项卡插件/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/新建文件夹/jQuery响应式Tabs选项卡插件/js/jquery.horizontalmenu.js"></script>
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
	</script>
</html>
