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
    
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>

</head>

<style>
    /* 整体 */
    body{
        background-color: rgb(246,246,248);
    }
    
    
    /* 搜索热门职位 */
    #searchhotposition{
        margin-left: 20px;
        color: gray;
        text-decoration: none;
    }
    
    td{
        text-align: center;
    }
    
    #hot{
        background-color: #F0EFEE;
        width: 800px;
        margin-left: 76px;
    }
    
    .all:hover{
        background-color: lightseagreen;
        color: white;
        width: 00px;
        
    }
    
    .adress{
        background-color: #F0EFEE;
        width: 800px;
        height: 40px;
        text-align: center;
    }
    
    .all{
        margin-top: 20px;
    }
    
    .clearFix:after {
        clear: both;
        content: '.';
        display: block;
        font-size: 0;
        height: 0;
        visibility: hidden;
        _zoom: 1;
    }
    
    .dropdown-toggle:hover{
        background-color: lightseagreen;
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
                        <li ><a href="${pageContext.request.contextPath}/companyHome.jsp">首页 <span class="sr-only">(current)</span></a></li>
                        <!-- 跳转至人才搜索与邀请 -->
                        <li class="active"><a href="${pageContext.request.contextPath}/companySearchInvitation.jsp">人才搜索与邀请</a></li>
                        <!-- 查看简历 -->
                        <li><a href="${pageContext.request.contextPath}/companyViewResume.jsp">查看简历</a></li>
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <!-- 发布招聘信息 -->
                        <li><a href="${pageContext.request.contextPath}/companyReleaseInfo.jsp">发布招聘信息</a></li>
                        <!-- 企业用户名 -->
                        <li class="dropdown">
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

<!-- 搜索栏 -->
<div class="container">
    <div class="row" style="text-align: left; margin-left: 10px;" >
        <div class="col-lg-10" style="text-align: left;">
            <div class="input-group" style="text-align: left;">
                <input type="text" class="form-control" placeholder="Search for..."style="height: 40px;">
                <span class="input-group-btn">
			        <button class="btn btn-default" type="button"
                            style="height: 40px;width: 100px;background-color: #00b38a;color: white;">搜索</button>
			      </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
</div>
<br />


<br />

<!-- 职位工作筛选 -->
<div class="container">
    <div class="row" style="margin-left: 25px;">
        <div class="col-lg-10 col-xs-10">
            <!-- 工作地点 adress -->
            <div class="adress">
                <div class="d1">
                    <strong>工作地点</strong>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">全国</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">北京</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">上海</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">深圳</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">广州</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">杭州</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">成都</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">南京</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">武汉</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">西安</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">厦门</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">长沙</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">苏州</span>
                    <span class="all" style="cursor:pointer; width: 60px; margin-left: 20px;">天津</span>
                </div>
            </div>
            <br />
            
            <!-- 工作经验 button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <strong>工作经验</strong> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">不限</a></li>
                    <li><a href="#">在校/应届</a></li>
                    <li><a href="#">3年及以下</a></li>
                    <li><a href="#">3-5年</a></li>
                    <li><a href="#">5-10年</a></li>
                    <li><a href="#">10年以上</a></li>
                    <li><a href="#">不要求</a></li>
                    <!-- <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li> -->
                </ul>
            </div><!-- btn-group -->
            
            <!-- 学历要求 button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <strong>学历要求</strong> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">不限</a></li>
                    <li><a href="#">大专</a></li>
                    <li><a href="#">本科</a></li>
                    <li><a href="#">硕士</a></li>
                    <li><a href="#">博士</a></li>
                    <li><a href="#">不要求</a></li>
                    <!-- <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li> -->
                </ul>
            </div><!-- btn-group -->
            <!-- 薪资要求 button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <strong>薪资要求</strong> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">不限</a></li>
                    <li><a href="#">2K以下</a></li>
                    <li><a href="#">2k-5k</a></li>
                    <li><a href="#">5k-10k</a></li>
                    <li><a href="#">10k15k</a></li>
                    <li><a href="#">15k-25k</a></li>
                    <li><a href="#">25k-50k</a></li>
                    <li><a href="#">50k及以上</a></li>
                    <!-- <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li> -->
                </ul>
            </div><!-- btn-group -->
        </div><!-- col-lg-10 -->
    </div> <!-- row -->
</div> <!-- container -->
<br />
<br />

<!-- 职位工作表 -->
<div class="container">
    <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
        <div>
            
            <div>
                <span style="margin-left: 60px; font-size: 17px; color: lightseagreen" >姓名:蔡刚</span>
                <span style="margin-left:100px; color: lightseagreen;font-size: 17px">性别:男</span>
                <span style="margin-left: 100px;font-size: 16px;"> 个人简介:矮穷矬，干啥啥不会，吃饭第一名</span>
                <img style="margin-left: 50px;margin-top: 10px;" width="80px" height="80px" src="${pageContext.request.contextPath}/img/src=http___i.shangc.net_2017_0705_20170705112743940.jpg&refer=http___i.shangc.jpg">
            </div>
            <div>
                <span style="margin-left: 60px;color: red;font-size: 17px">薪资要求:18k-35k</span>
                <span style="margin-left: 40px;font-size: 13px;font-weight: normal" >经验3-5年/本科</span>
                <span style="margin-left: 140px;font-size: 13px;font-weight: normal" >未婚</span>
                <span style="margin-left: 60px;font-size: 13px;font-weight: normal" >党员</span>
                <a style="cursor:pointer; text-decoration: none;margin-left: 170px;">查看完整简历</a>
            </div>
        
        </div>
        
        <br />
        <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
            <span style="font-size: 10px; margin-left: 60px;">熟练使用:</span>
            <span style="font-size: 10px;">Socket</span>
            <span style="font-size: 10px;">Spring</span>
            <span style="margin-left: 250px;font-size: 14px;">个人爱好:听音乐、玩游戏</span>
        </div>
    </div><!-- 职位工作表container -->
    <br />
    
    <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
        <div>
            
            <div>
                <span style="margin-left: 60px; font-size: 17px; color: lightseagreen" >姓名:蔡刚</span>
                <span style="margin-left:100px; color: lightseagreen;font-size: 17px">性别:男</span>
                <span style="margin-left: 100px;font-size: 16px;"> 个人简介:矮穷矬，干啥啥不会，吃饭第一名</span>
                <img style="margin-left: 50px;margin-top: 10px;" width="80px" height="80px" src="${pageContext.request.contextPath}/img/src=http___i.shangc.net_2017_0705_20170705112743940.jpg&refer=http___i.shangc.jpg">
            </div>
            <div>
                <span style="margin-left: 60px;color: red;font-size: 17px">薪资要求:18k-35k</span>
                <span style="margin-left: 40px;font-size: 13px;font-weight: normal" >经验3-5年/本科</span>
                <span style="margin-left: 140px;font-size: 13px;font-weight: normal" >未婚</span>
                <span style="margin-left: 60px;font-size: 13px;font-weight: normal" >党员</span>
                <a style="cursor:pointer; text-decoration: none;margin-left: 170px;">查看完整简历</a>
            </div>
        
        </div>
        
        <br />
        <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
            <span style="font-size: 10px; margin-left: 60px;">熟练使用:</span>
            <span style="font-size: 10px;">Socket</span>
            <span style="font-size: 10px;">Spring</span>
            <span style="margin-left: 250px;font-size: 14px;">个人爱好:听音乐、玩游戏</span>
        </div>
    </div><!-- 职位工作表container -->
    <br />
    
    <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
        <div>
            
            <div>
                <span style="margin-left: 60px; font-size: 17px; color: lightseagreen" >姓名:蔡刚</span>
                <span style="margin-left:100px; color: lightseagreen;font-size: 17px">性别:男</span>
                <span style="margin-left: 100px;font-size: 16px;"> 个人简介:矮穷矬，干啥啥不会，吃饭第一名</span>
                <img style="margin-left: 50px;margin-top: 10px;" width="80px" height="80px" src="${pageContext.request.contextPath}/img/src=http___i.shangc.net_2017_0705_20170705112743940.jpg&refer=http___i.shangc.jpg">
            </div>
            <div>
                <span style="margin-left: 60px;color: red;font-size: 17px">薪资要求:18k-35k</span>
                <span style="margin-left: 40px;font-size: 13px;font-weight: normal" >经验3-5年/本科</span>
                <span style="margin-left: 140px;font-size: 13px;font-weight: normal" >未婚</span>
                <span style="margin-left: 60px;font-size: 13px;font-weight: normal" >党员</span>
                <a style="cursor:pointer; text-decoration: none;margin-left: 170px;">查看完整简历</a>
            </div>
        
        </div>
        
        <br />
        <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
            <span style="font-size: 10px; margin-left: 60px;">熟练使用:</span>
            <span style="font-size: 10px;">Socket</span>
            <span style="font-size: 10px;">Spring</span>
            <span style="margin-left: 250px;font-size: 14px;">个人爱好:听音乐、玩游戏</span>
        </div>
    </div><!-- 职位工作表container -->
</div>


<div class="container">
    <div class="row" style="text-align: center;">
        
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>

<br />
<br />

<div class="container">
    <div class="row"style="background-color: white;height: 100px;">
        <div class="col-lg-1"></div>
        <div class="col-lg-10" >
            <img src="${pageContext.request.contextPath}/img/Logo.png" style="width: 80px;margin-top: 10px;"/>
            
            <span style="font-size: 30px;color: #000000;">千寻网——大家喜欢的招聘求职平台</span>
        
        </div>
    
    </div>
</div>

<!--友情链接-->
<div class="container" style="margin-top: 15px;">
    <div class="row" style="text-align: center;">
        <p>
            <a href="#" style="margin-left: 30px;">关于我们</a>
            <a href="#"style="margin-left: 30px;">联系我们</a>
            <a href="#"style="margin-left: 30px;">招贤纳士</a>
            <a href="#"style="margin-left: 30px;">法律声明</a>
            <a href="#"style="margin-left: 30px;">友情链接</a>
            <a href="#"style="margin-left: 30px;">服务声明</a>
            <a href="#"style="margin-left: 30px;">广告声明</a>
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
