<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
		<link href="${path}/css/bootstrap.min.css" rel="stylesheet" />
		
		<link href="${path}/css/jquery.horizontalmenu.css" rel="stylesheet">
		
		<link href="${path}/css/bootstrap.min.css" rel="stylesheet">
		
		<style>
			/* 整体 */
			body{
				background-color: rgb(246,246,248);
			}
			
			li.paral{
				float: left;
				margin-left: 10px;
				list-style: none;
			}
			
			.table1 td{
				padding: 10px;
			}
			label.error{
				color: red;
			}
		</style>
		
		
	</head>
	<style>
	</style>
	<body>
	<jsp:include page="/personalHeader.jsp"></jsp:include>

	<c:set value="${pageContext.request.contextPath}" var="path" scope="application"></c:set>
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
					<span style="margin-left: 50px; margin-bottom: 10px; ">个人优势  去完善</span>
				</div>
			</div>
			
		</div>
		<br><br>

	<form action="/personal?method=modifyResume" method="post" id="updateResume" enctype="multipart/form-data">
		<!-- 个人信息 -->
		<div class="container" style="background-color: rgb(248,249,251);">
			<div class="row" style="text-align: left;margin: 20px;float:left" >
				<div class="col-lg-2">
					<br/>
					<br/>
					<img src="${pageContext.request.contextPath}${resume.photo}" id="pic" alt="..." style="width: 100px;height: 100px" class="img-circle">
					
					<br/>
					<br/>
					<br/>
					<input type="file" id="file" placeholder="file" name="file" id="photo" name="photo" value="上传证件照" onchange="showPreview(this)">
				</div>
				
				<div class="col-lg-10" >
					<table align="center" class="table1" >
						<tr>
							<td>
								<legend>编辑简历个人信息</legend>
									<table>
										<tr <%--style="width: 200px;height: 200px"--%>>
											<td align="right">姓名</td>
											<td><input type="text" name="name" id="name" value="${resume.name}" /></td>
											<td align="right">性别</td>
											<td>
												<input type="radio" name="sex" id="man" value="男" checked="checked"/>男
												<input type="radio" name="sex" id="woman" value="女"/>女
											</td>

										</tr>
										<tr>
											<!-- <input type="input" name="education" id="inp1education" /> -->
											<td align="right" >学历</td>
											<td>
												<select id="education">学历
													<option value="专科">专科</option>
													<option value="本科">本科</option>
													<option value="硕士">硕士</option>
													<option value="博士">博士</option>
												</select>
											</td>
											<td align="right">毕业时间</td>
											<td><input type="date" name="graduationYear" id="graduationYear" value="${resume.graduationYear}" /></td>

										</tr>

										<tr>
											<td >手机号码</td>
											<td><input type="text" name="phone" id="phone" value="${resume.phone}"/></td>
											<td >邮箱</td>
											<td><input type="email" name="email" id="email"  value="${resume.email}" /></td>
										</tr>


										<tr>
											<td >生日</td>
											<td><input type="date" name="birthday" id="birthday" value="${resume.birthday}"/></td>
											<td >毕业院校</td>
											<td><input type="text" name="college" id="college" value="${resume.college}"/></td>
										</tr>

										<tr>
											<td >专业</td>
											<td><input type="text" name="major" id="major" value="${resume.major}"/></td>
										</tr>
									</table>
							</td>
					</table>
				</div><%--col-lg-10--%>
			</div><%--row--%>
			<br>
		</div>
		<br />
		<br />



		<!-- 个人优势 -->
			<div class="container" style="background-color: rgb(248,249,251);">
				<div class="" style="float:left">
					<h3>个人优势</h3>
					<div class="row" style="text-align: left;margin: 10px;float:left" >
						<textarea name="personalAdvantage" class="form-control" cols="100" rows="5" placeholder="请输入您的个人优势..." >${resume.personalAdvantages}</textarea>
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
					<select id="jobExpectation" name="jobExpectation">
						<option value="1">桌面程序工程师</option>
						<option value="2">网络应用工程师</option>
						<option value="3">运维工程师</option>
						<option value="4">测试工程师</option>
						<option value="5">安全工程师</option>
						<option value="6">架构师</option>
						<option value="7">PCB工程师</option>
						<option value="8">FPGA工程师</option>
						<option value="9">IC工程师</option>
						<option value="10">数据挖掘工程师</option>
					</select>

					<select name="locationExcepctation">
						<option value="1">全国</option>
						<option value="2">北京</option>
						<option value="3">上海</option>
						<option value="4">深圳</option>
						<option value="5">广州</option>
						<option value="6">杭州</option>
						<option value="7">成都</option>
						<option value="8">南京</option>
						<option value="9">武汉</option>
						<option value="10">西安</option>
						<option value="11">厦门</option>
						<option value="12">长沙</option>
						<option value="13">苏州</option>
						<option value="14">天津</option>
					</select>

					<select name="salaryExpectation">
						<option value="1">薪资不限</option>
						<option value="2">2k及以下</option>
						<option value="3">2k-5k</option>
						<option value="4">5k-10k</option>
						<option value="5">10k-15k</option>
						<option value="6">15k-25k</option>
						<option value="7">25k-30k</option>
						<option value="8">50k及以上</option>
					</select>
					</div>
					<!-- 
					<button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" style="position: absolute; margin-left: 300px;">
					  修改
					</button> -->
			</div>
			<br>
		</div><%--container--%>
		<br />
		<br />

		<!-- 工作经历 -->
			<div class="container" style="background-color: rgb(248,249,251);">
			<div class="" style="float:left">
				<h3>工作经历</h3>
				<div class="row" style="text-align: left;margin: 10px;float:left" >
					<textarea name="workExperience" id="workExperience" class="form-control" cols="100" rows="5" placeholder="请输入您的工作经历...">${resume.workExperience}</textarea>
				</div>
			</div>
			<br>
		</div>
		<br />
		<br />
		
		<!-- 项目经历 -->
			<div class="container" style="background-color: rgb(248,249,251);">
			<div class="" style="float:left;">
					<h3>项目经历</h3>
					<div class="row"style="text-align: left;margin: 10px;float:left" >
						<textarea name="projectExperience" class="form-control" cols="100" rows="5" placeholder="请输入您的项目经历...">${resume.projectExperience}</textarea>
					</div>
					<br />
			</div>
			<br>
		</div>
		
		<br />
		<br />

			<%--提交按钮--%>
			<div class="container">
				<div class="row" style="text-align: left;margin: 20px;float:left" >
					<button type="submit" style="position: absolute; margin-left: 300px; margin-top: -50px;width: 120px;" >
						确认更改简历
					</button>
					<button type="reset" style="position: absolute; margin-left: 550px; margin-top: -50px;width: 120px;">
						取消
					</button>
				</div>
			</div>
		
		</form>  <%--form--%>
		
		<br />
		<br />

	<jsp:include page="/floor.jsp"></jsp:include>

		
	</body>
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${path}/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${path}/js/jquery.horizontalmenu.js"></script>

	<!-- 2.引入校验插件 -->
	<script src="${pageContext.request.contextPath}/validate/jquery.validate.min.js"></script>

	<script src="${pageContext.request.contextPath}/validate/validate.js"></script>

	<script type="text/javascript">
		//将文件流以url形式读取，实现图片实时显示：
		function showPreview(source){
			var file = source.files[0];
			if(window.FileReader){
				var fr = new FileReader();
				fr.onloadend = function(e){
					document.getElementById("pic").src=e.target.result;
				}
				fr.readAsDataURL(file);
			}
		}
	</script>

</html>
