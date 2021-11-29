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


</head>
<style>
    body{
        background-color: rgb(246,246,248);
    }
    
    .container{
        /* margin-left:40px; */
    }
    
    .style_un-auth-top-tips__3quZa {
        display: inline-block;
        vertical-align: top;
        font-size: 14px;
        color: #999;
        margin-left: 16px;
        line-height: 24px;
        font-size: 12px;
    }
    
    
    .s1{
        color: #999;
        font-size: smaller;
        outline: 0;
        text-decoration: none;
        margin-left: 16px;
    }
    
    .l1{
        font-weight:lighter;
        margin-left: 26px;
        margin: 20px;
    }
    
    .zhao{
        width: 120px;
        height: 30px;
        text-align: left;
        font-size: 7px;
        border-radius: 10px;
    }
    
    .t1{
        width: 320px;
        height: 30px;
        border-radius: 10px;
    }
    
    
    .form-control{
        width: 320px;
        margin-top: -40px;
        margin-left: 90px;
        font-size:1px;
    }
    
    .btn-success{
        margin-left: 175px;
    }
    
    .bottom{
        background-color: rgb(246,246,248);
        height: 300px;
    }
    
    .l2{
        display: inline-block;
        font-weight:lighter;
        margin-left: 30px;
        margin-top: -20px;
    }
    
    #carousel-example-generic{
        width: 500px;
        height: 700px;
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
                        <li class="active"><a href="${pageContext.request.contextPath}/companyReleaseInfo.jsp">发布招聘信息</a></li>
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

<!-- 发布职位，开启招聘之旅〜 -->
<div class="container">
    <div class="row" style="margin-left: 30px;">
				<span>
					<strong>
						发布职位，开启招聘之旅〜
					</strong>
				</span>
        <a class="style_un-auth-top-tips__3quZa" href="#" target="_self">
            （暂不发布，先去完成招聘者<span class="style_un-auth-top-tips-active__3lih3">身份认证
				</span>）</a>
    </div>
</div>
<!-- 分割线 -->
<hr color="black" />
</div>  <!-- container -->



<div class="container">
    <div class="col-lg-4 col-md-12">
        <form>
            <!-- 基本信息 -->
            <div class="container">
                <div class="row" >
                    <div class="lg-form-item-label">
                        <label style="font-size: 16px;">基本信息</label>
                        <span class="s1">
										职位名称、类别与招聘类型发布后不可修改，请准确填写
									</span>
                    </div><!-- lg-form-item-label -->
                </div><!-- row -->
            </div>
            
            <br />
            
            <!-- 基本信息 -->
            <div class="container">
                <div class="row" >
                    <label class="l1" style="font-size: 12px;">企业名称</label>
                    <input class="t1" name="companyName"type="text" style="border:1px solid #369"/ >
                </div><!-- row -->
                <div class="row" >
                    <label class="l1" style="font-size: 12px;">招聘类型</label>
                    <select class="zhao" name="jobType">
                        <option>社招</option>
                        <option>校招</option>
                    </select>
                </div><!-- row -->
                <div class="row">
                    <label class="l1" style="font-size: 12px;">职位名称</label>
                    <input class="t1" type="jobTitle" style="border:1px solid #369"/ >
                </div><!-- row -->
            </div><!-- container -->
            
            <!-- 经验学历 -->
            <div class="container">
                <div class="row" style="margin-left: -32px;">
                    <div class="col-lg-5 col-md-6 col-xs-12">
                        <label class="l1" style="font-size: 12px;">经验学历</label>
                        <select class="zhao" name="jobExperience">
                            <option>不限</option>
                            <option>1年以下</option>
                            <option>1-3年</option>
                            <option>3-5年</option>
                            <option>5-10年</option>
                            <option>10年以上</option>
                        </select>
                        <select class="zhao" name="education">
                            <option>不限</option>
                            <option>大专</option>
                            <option>本科</option>
                            <option>硕士</option>
                            <option>博士</option>
                        </select>
                    </div>
                </div><!-- row -->
            </div><!-- container -->
            
            <!-- 企业Logo -->
            <div class="container">
                <div class="row" style="margin-left: 0px;">
                    <div class="col-lg-2 col-md-4 col-xs-4" style="margin-left: -9px;">
                        <span class="l2" style="font-size: 12px;margin-left: 0px;">企业logo</span>
                    </div>
                    <div class="col-lg-4 col-md-8 col-xs-6" style="margin-left: -80px;">
                        <input name="companyLogo"type="file" />
                    </div>
                </div>
            </div>
            <br />
            <!-- 职位详情 -->
            <div class="container">
                <div class="row" >
                    <div class="lg-form-item-label">
                        <label style="font-size: 16px;">职位详情</label>
                        <span class="s1">
										详细的职位介绍信息能帮助你更快找到合适的候选人
									</span>
                    </div>
                </div>
            </div><!-- container -->
            <br />
            <!-- 描述 -->
            <div class="container">
                <div class="row" >
                    <label class="l1" style="font-size: 12px;">职位描述</label>
                    <textarea name="jobDescription" class="form-control" rows="10" placeholder="请输入岗位要求,任职要求等,至少20字"></textarea>
                </div>
                <div class="row" >
                    <label class="l1" style="font-size: 12px;">工作地址</label>
                    <input class="t1" name="jobAddress" type="text" style="border:1px solid #369"/ >
                </div>
                <div class="row" >
                    <label class="l1" style="font-size: 12px;">所属部门</label>
                    <input class="t1" name="department" type="text" style="border:1px solid #369"/ >
                </div>
            </div><!-- container -->
            <br />
            <!-- 按钮 -->
            <div class="container">
                <div class="row clearfix">
                    <div class="col-  md-12 column">
                        <button type="button" class="btn btn-default btn-success">发布职位</button>
                    </div>
                </div>
            </div><!-- container -->
        </form>
    </div>
    
    <!-- 轮播图 -->
    <div class="container">
        <div class="row" style="margin-left: 500px; margin-top: 20px;">
            <div class="col-lg-8 col-md-4 ">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="${pageContext.request.contextPath}/img/src=http___hbimg.b0.upaiyun.com_e2b5213299ac3fbe9da9887125c291b8ee07ee5a16ed7-I5yy76_fw658&refer=http___hbimg.b0.upaiyun.jpg">
                            <div class="carousel-caption">
                            
                            </div>
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/u=3439964768,1757550053&fm=26&fmt=auto.webp" alt="...">
                            <div class="carousel-caption">
                            
                            </div>
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/src=http___nmgtl.wenming.cn_zixun_201606_W020160603538554232053.jpg&refer=http___nmgtl.wenming.jpg" alt="...">
                            <div class="carousel-caption">
                            
                            </div>
                        </div>
                    </div>
                    
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<br />

<!-- 分割线 -->
<hr color="black" />

<!-- 友情链接 -->
<div class="container">
    <div class="row">
        <div class=bottom">
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
        </div>
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
                return false; //if this 	finction return true then will be executed http request
            }
        });
    });
</script>
</html>
