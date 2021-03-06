<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 22413
  Date: 2021/12/1
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<head>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />

    <link href="${pageContext.request.contextPath}/css/jquery.horizontalmenu.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>

<c:set value="${pageContext.request.contextPath}" var="path" scope="application"></c:set>

<!-- 导航栏 -->
<div class="container">
    <div class="row" style="margin: 5px;border: none;">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header" style="margin: 5px;border: none;">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- logo图片 -->
                    <img src="${pageContext.request.contextPath}/img/Logo.png" style="width: 30px;height: 30px;"/>
                    <!-- 网站名称 -->
                    <span id="title" style="color: #00b38a; font-size: 25px;  margin-top: 15px;">千寻网</span>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav">
                        <!-- location地点选择 -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">全国 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">北京</a></li>
                                <li><a href="#">上海</a></li>
                                <li><a href="#">深圳</a></li>
                                <!-- <li role="separator" class="divider"></li> -->
                                <li><a href="#">广州</a></li>
                                <li><a href="#">杭州</a></li>
                                <li><a href="#">成都</a></li>
                                <li><a href="#">南京</a></li>
                                <li><a href="#">武汉</a></li>
                                <li><a href="#">西安</a></li>
                                <li><a href="#">厦门</a></li>
                                <li><a href="#">长沙</a></li>
                                <li><a href="#">苏州</a></li>
                                <li><a href="#">天津</a></li>
                            </ul>
                        </li>
                        <!-- 跳转至首页 -->
                        <li class="active"><a href="${pageContext.request.contextPath}/personal/personalHome.jsp">首页 <span
                                class="sr-only">(current)</span></a>
                        </li>
                        <!-- 跳转至查看所有职位 -->
                        <%--<li><a href="${pageContext.request.contextPath}/personal/personalPosition.jsp">职位</a></li>--%>
                        <li><a href="/job?method=findAllPositions">职位</a></li>
                        <!-- 求职详细 -->
                        <li><a href="${pageContext.request.contextPath}/personal/personalViewResume.jsp">求职详细</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <!-- 查看我的简历 -->
                        <li><a href="${pageContext.request.contextPath}/personal/personalUpdateInfo.jsp">我的简历</a></li>
                        <!-- 用户名 -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">${personalUser.username}<span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/personal/personalInfo.jsp">修改个人信息</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/personal/personalLoginRegister.jsp">退出账号</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/company/companyLoginRegister.jsp">进入企业版</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</div>
<!-- 先引入jQuery核心js文件 -->
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
