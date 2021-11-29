<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改公司账号密码</title>
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
                        <li><a href="${pageContext.request.contextPath}/companyHome.jsp">首页 <span class="sr-only">(current)</span></a></li>
                        <!-- 跳转至人才搜索与邀请 -->
                        <li><a href="${pageContext.request.contextPath}/companySearchInvitation.jsp">人才搜索与邀请</a></li>
                        <!-- 查看简历 -->
                        <li><a href="${pageContext.request.contextPath}/companyViewResume.jsp">查看简历</a></li>
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <!-- 发布招聘信息 -->
                        <li><a href="${pageContext.request.contextPath}/companyReleaseInfo.jsp">发布招聘信息</a></li>
                        <!-- 企业用户名 -->
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">公司-用户名 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/companyInfo.jsp">修改公司信息</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/companyLoginRegister.jsp">退出账号</a></li>
                            </ul>
                        </li>
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
                    <div class="dr-trigger"><span class="dr-icon dr-icon-menu"></span><a class="dr-label">企业信息</a></div>
                    <ul>
                        <li><a class="dr-icon dr-icon-user" href="companyModifyInfo.html" style="color: black;">修改企业信息</a></li>
                        <li class="active"><a class="dr-icon dr-icon-settings" href="companyModifyPwd.html" style="color: black;">修改账户密码</a></li>
                        <li><a class="dr-icon dr-icon-switch" href="#" style="color: black;">退出</a></li>
                    </ul>
                </nav>
            </div><!-- side -->
        </div><!-- col-lg-4 -->
        
        <div class="col-lg-8 col-md-6 col-xs-6" style="margin-top: 30px;">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label" >新密码</label>
                    <div class="col-sm-10">
                        <input type="text" name="passwrod"class="form-control" id="inputEmail3" placeholder="New PassWord">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label" name="repassword">确认密码</label>
                    <div class="col-sm-10">
                        <input type="text"name="repasswrod" class="form-control" id="inputPassword3" placeholder="RepassWord">
                    </div>
                </div>
                <div style="margin-left: 130px; margin-top: 30px;">
                    <div class="vi-form-item__content" >
                        <button class="vi-button vi-button--primary">
                            <span>保存</span>
                        </button>
                        <button class="vi-button vi-button--primary" style="margin-left: 60px;">
                            <span>取消</span>
                        </button>
                    </div>
                </div>
            </form>
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
                return false; //if this 	finction return true then will be executed http request
            }
        });
    });
</script>
</html>
