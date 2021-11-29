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

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>

    <link href="${pageContext.request.contextPath}/css/jquery.horizontalmenu.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>

    <style>
        /* 整体 */
        body {
            background-color: rgb(246, 246, 248);
        }

        /* 查看更多按钮 */
        .selectMore {
            color: green;
            border: 1px solid green;
        }

        /* 热门企业logo */
        .hotImg {
            height: 100px;
            width: 100px;
        }

        /* 热门企业按钮 */
        .hotBtn {
            width: 110px;
            height: 25px;
            background-color: white;
            border: 1px solid;

        }

        /* 搜索热门职位 */
        .searchHotPosition {
            margin-left: 20px;
            color: #00b38a;
        }

        .recommendPosition {
            font-size: 20px;

        }

        .recommendBottom {
            color: gray;
        }

        .recommendImg {
            height: 40px;
        }

        .recommendSalary {
            color: red;
        }

        .recomendMiddle {
            color: gray;
        }

        /* 小火箭css */
        #gotop1 {
            width: 80px;
            position: fixed;
            bottom: 90px;
            cursor: pointer;
            z-index: 99998;
            right: 50%;
            margin-right: -700px;
        }

        /* 小火箭悬停特效 */

        #gotop1:hover {
            animation: rubberBand 1s;
        }

        @keyframes rubberBand {
            from {
                transform: scale3d(1, 1, 1);
            }

            30% {
                transform: scale3d(1.25, 0.75, 1);
            }

            40% {
                transform: scale3d(0.75, 1.25, 1);
            }

            50% {
                transform: scale3d(1.15, 0.85, 1);
            }

            65% {
                transform: scale3d(.95, 1.05, 1);
            }

            75% {
                transform: scale3d(1.05, .95, 1);
            }

            to {
                transform: scale3d(1, 1, 1);
            }
        }
    </style>


</head>
<style>
</style>
<body>
<a name="top"></a>

<!-- 右侧小火箭图标返回顶部 -->
<div id="shangxia2">
			<span id="gotop1">
				<a href="#top">
					<img src="${pageContext.request.contextPath}/img/huojian.svg" alt="返回顶部小火箭">
				</a>

                <!-- <img src="img/rocked.png" alt="返回顶部小火箭"> -->
			</span>
</div>

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
                               aria-haspopup="true" aria-expanded="false">地点 <span class="caret"></span></a>
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
                        <li class="active"><a href="${pageContext.request.contextPath}/personal/personalHome.jsp">首页 <span
                                class="sr-only">(current)</span></a>
                        </li>
                        <!-- 跳转至查看所有职位 -->
                        <li><a href="${pageContext.request.contextPath}/personal/personalPosition.jsp">职位</a></li>
                        <!-- 求职详细 -->
                        <li><a href="${pageContext.request.contextPath}/personal/personalJobDetails.jsp">求职详细</a></li>
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
                        <li><a href="${pageContext.request.contextPath}/personal/companyLoginRegister.jsp">进入企业版</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</div>

<!-- 搜索栏 -->
<div class="container">
    <div class="row" style="text-align: center;">
        <div class="col-lg-1" style="text-align: center;">
            <div class="input-group" style="text-align: center;">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-lg-10" style="text-align: center;">
            <div class="input-group" style="text-align: center;">
                <input type="text" class="form-control" placeholder="Search for..." style="height: 40px;">
                <span class="input-group-btn">
			        <button class="btn btn-default" type="button"
                            style="height: 40px;width: 100px;background-color: #00b38a;color: white;">搜索</button>
			      </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
</div>
<br/>

<!-- 热门职位 -->

<div class="container">
    <div class="row" style="text-align: center;">
        <span>热门职位:</span>
        <a class="searchHotPosition" href="#">Java</a>
        <a class="searchHotPosition" href="#">产品经理</a>
        <a class="searchHotPosition" href="#">Web前端</a>
        <a class="searchHotPosition" href="#">项目经理/主管</a>
        <a class="searchHotPosition" href="#">C++</a>
        <a iclassd="searchHotPosition" href="#">测试工程师</a>
        <a class="searchHotPosition" href="#">数据分析师</a>
        <a class="searchHotPosition" href="#">运维工程师</a>
    </div>
</div>

<!-- 选择栏  以后再延伸 -->
<!-- 		<div class="container">
			<div></div>
		</div> -->

<br/>
<!--轮播-->
<div class="container">
    <div class="row" style="margin-left: 5px;margin-right: 5px;">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators 控制器 -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>

                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                <li data-target="#carousel-example-generic" data-slide-to="6"></li>
            </ol>

            <!-- Wrapper for slides 轮播的图片-->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="${pageContext.request.contextPath}/img/1.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/2.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/3.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/4.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/5.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/6.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/7.jpg" alt="...">
                </div>
            </div>

            <!-- Controls 控制左右翻转的按钮 -->
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


<br/>
<br/>

<!-- 推荐栏 -->

<div class="container"><h3 style="text-align: center;">
    <span style="color: #d1d4db;">————</span>&nbsp;为你推荐&nbsp;<span style="color: #d1d4db;">————</span></h3></div>


<div class="container">
    <div class="row">

        <div class="col-md-offset col-md-12">
            <div class="tab" role="tabpanel">

                <ul class="nav nav-tabs" role="tablist">
                    <!-- 为你推荐 -->
                    <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab"
                                                              data-toggle="tab">为你推荐</a></li>
                    <!-- 热门职位 -->
                    <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">热门职位</a>
                    </li>
                    <!-- 我要入职 -->
                    <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab">我要入职</a>
                    </li>
                </ul>

                <div class="tab-content tabs">
                    <!-- 为你推荐 -->
                    <div role="tabpanel" class="tab-pane fade in active" id="Section1"
                         style="margin-left: 15px;margin-right: 15px;">
                        <div class="row">
                            <!-- 小米 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                                </div>
                                <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 蚂蚁金服 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 中国移动研究所 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                                </div>
                                <br/>
                            </div>

                        </div>

                        <div class="row">
                            <!-- Anker -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                                </div>
                                <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 滴滴 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/didiLogo.png"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 腾讯 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                                </div>
                                <br/>
                            </div>
                        </div>

                    </div>

                    <!-- 热门职位 -->
                    <div role="tabpanel" class="tab-pane fade" id="Section2"
                         style="margin-left: 15px;margin-right: 15px;">
                        <div class="row">
                            <!-- 小米 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                                </div>
                                <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 蚂蚁金服 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 中国移动研究所 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                                </div>
                                <br/>
                            </div>

                        </div>

                        <div class="row">
                            <!-- Anker -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                                </div>
                                <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 滴滴 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/didiLogo.png"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 腾讯 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                                </div>
                                <br/>
                            </div>
                        </div>

                    </div>

                    <!-- 我要入职 -->
                    <div role="tabpanel" class="tab-pane fade" id="Section3"
                         style="margin-left: 15px;margin-right: 15px;">
                        <div class="row">
                            <!-- 小米 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                                </div>
                                <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 蚂蚁金服 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 中国移动研究所 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                                </div>
                                <br/>
                            </div>

                        </div>

                        <div class="row">
                            <!-- Anker -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                                </div>
                                <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 滴滴 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/didiLogo.png"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                                </div>
                                <br/>
                            </div>

                            <!-- 腾讯 -->
                            <div class="col-md-4" style="background-color: white;">
                                <br/>
                                <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                                </div>
                                <div>
                                    <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                                </div>
                                <br/>
                                <div>
                                    <span>-------------------------------------------------------------------------</span>
                                </div>
                                <div>&nbsp;&nbsp;&nbsp;
                                    <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                                         class="recommendImg"/>
                                    <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                                </div>
                                <br/>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<div class="container" style="text-align: center;">
    <br/>
    <button class="selectMore" style="width: 300px;height: 40px;background-color: white;text-align: center;" href="#">
        查看更多
    </button>
</div>

<br/>
<br/>

<!-- 热招职位 -->

<div class="container"><h3 style="text-align: center;">
    <span style="color: #d1d4db;">————</span>&nbsp;热招职位&nbsp;<span style="color: #d1d4db;">————</span></h3></div>

<!-- 热招职位内容 -->
<div class="container">

    <div class="ah-tab-wrapper">
        <div class="ah-tab">
            <a class="ah-tab-item" data-ah-tab-active="true" href="">IT互联网</a>
            <a class="ah-tab-item" href="">金融</a>
            <a class="ah-tab-item" href="">教育培训</a>
            <a class="ah-tab-item" href="">娱乐传媒</a>
            <a class="ah-tab-item" href="">医疗健康</a>
            <a class="ah-tab-item" href="">法律咨询</a>
            <a class="ah-tab-item" href="">房地产·建筑</a>
        </div>
    </div>
    <div class="ah-tab-content-wrapper">
        <!-- IT互联网 -->
        <div class="ah-tab-content" data-ah-tab-active="true">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>

        </div>
        <!-- 金融 -->
        <div class="ah-tab-content">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>


        </div>
        <!-- 教育培训 -->
        <div class="ah-tab-content">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>


        </div>
        <!-- 娱乐传媒 -->
        <div class="ah-tab-content">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>


        </div>
        <!-- 医疗健康 -->
        <div class="ah-tab-content">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>

        </div>

        <!-- 法律咨询 -->
        <div class="ah-tab-content">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>

        </div>
        <!-- 房地产·建筑 -->
        <div class="ah-tab-content">
            <div class="row">
                <!-- 小米 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">小米全球新零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">北京&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小米&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 蚂蚁金服 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">JAVA计数专家(秒反馈)&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">25-50K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">杭州&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/mayijinfuLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">蚂蚁金服&nbsp;|&nbsp;互联网金融</span>
                    </div>
                    <br/>
                </div>

                <!-- 中国移动研究所 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">配置管理工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">西安&nbsp;|&nbsp;3-5年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/zhongguoyidongLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">中国移动研究所&nbsp;|&nbsp;数据服务</span>
                    </div>
                    <br/>
                </div>

            </div>

            <div class="row">
                <!-- Anker -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">大数据开发工程师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">15-30K·14薪</span>
											</span>
                    </div>
                    <div>
											<span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科
											</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/ankerLogo.jpg" class="recommendImg"/>
                        <span class="recommendBottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anker&nbsp;|&nbsp;电子商务</span>
                    </div>
                    <br/>
                </div>

                <!-- 滴滴 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">算法工程师&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">35-65K·16薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">北京&nbsp;|&nbsp;经验不限&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/didiLogo.png" class="recommendImg"/>
                        <span class="recommendBottom">滴滴&nbsp;|&nbsp;移动互联网</span>
                    </div>
                    <br/>
                </div>

                <!-- 腾讯 -->
                <div class="col-md-4" style="background-color: white;">
                    <br/>
                    <div>
											<span class="recommendPosition">腾讯数据安全产品开发&nbsp;&nbsp;&nbsp;
												<span class="recommendSalary">30-60K·18薪</span>
											</span>
                    </div>
                    <div>
                        <span class="recomendMiddle">深圳&nbsp;|&nbsp;5-10年&nbsp;|&nbsp;本科</span>
                    </div>
                    <br/>
                    <div>
                        <span>-------------------------------------------------------------------------</span>
                    </div>
                    <div>&nbsp;&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/tengxunLogo.jpg"
                             class="recommendImg"/>
                        <span class="recommendBottom">腾讯&nbsp;|&nbsp;互联网</span>
                    </div>
                    <br/>
                </div>
            </div>

        </div>
    </div>
</div>

</div>
<div class="container" style="text-align: center;">
    <button class="selectMore" style="width: 300px;height: 40px;background-color: white;text-align: center;" href="#">
        查看更多
    </button>
</div>

<br/>
<br/>

<!-- 热门企业 -->

<div class="container"><h3 style="text-align: center;">
    <span style="color: #d1d4db;">————</span>&nbsp;热门企业&nbsp;<span style="color: #d1d4db;">————</span></h3></div>


<div class="container" style="background-color: white;">
    <br/>
    <div class="row">
        <div class="col-md-12">
            <div class="row" style="text-align: center;">
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/huaweiLogo.jpg" class="hotImg"/>
                    </div>
                    <h4>华为</h4>
                    <h6 style="color: gray;">科技 | 热门</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        531个热招职位
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/keeplogo.png" class="hotImg"/>
                    </div>
                    <h4>Keep</h4>
                    <h6 style="color: gray;">互联网 | 健身</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        431个热招职位
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/weilaiLogo.png" class="hotImg"/>
                    </div>
                    <h4>蔚来汽车</h4>
                    <h6 style="color: gray;">科技 | 汽车</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        331个热招职位
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/xiaomiLogo.jpg" class="hotImg"/>
                    </div>
                    <h4>小米科技</h4>
                    <h6 style="color: gray;">科技 | 小米生态</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        831个热招职位
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br/>

    <div class="row">
        <div class="col-md-12">
            <div class="row" style="text-align: center;">
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/kuaishouLogo.jpg"class="hotImg"/>
                    </div>
                    <h4>快手</h4>
                    <h6 style="color: gray;">科技 | 短视频</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        231个热招职位
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/wanmeishijieLogo.png" class="hotImg"/>
                    </div>
                    <h4>完美世界</h4>
                    <h6 style="color: gray;">科技 | 游戏</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        431个热招职位
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/yuewenjituanLogo.png" class="hotImg"/>
                    </div>
                    <h4>阅文集团</h4>
                    <h6 style="color: gray;">科技 | 读书</h6>
                    <div>
                        <br/>
                        <button type="button" class="hotBtn"/>
                        431个热招职位
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/zijietiaodongLogo.jpg"class="hotImg"/>
                    </div>
                    <h4>字节跳动</h4>
                    <h6 style="color: gray;">科技 | 短视频</h6>
                    <div>
                        <br/>
                        <button type="button" id="hotbtn"/>
                        1031个热招职位
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br/>
</div>
<br/>

<div class="container" style="text-align: center;">
    <button class="selectMore" style="width: 300px;height: 40px;background-color: white;text-align: center;" href="#">
        查看更多
    </button>
</div>

<br/>
<br/>

<!--友情链接-->
<div class="container" style="margin-top: 15px;">
    <div class="row" style="text-align: center;">
        <p>
            <a href="#" style="margin-left: 30px;">关于我们</a>
            <a href="#" style="margin-left: 30px;">联系我们</a>
            <a href="#" style="margin-left: 30px;">招贤纳士</a>
            <a href="#" style="margin-left: 30px;">法律声明</a>
            <a href="#" style="margin-left: 30px;">友情链接</a>
            <a href="#" style="margin-left: 30px;">服务声明</a>
            <a href="#" style="margin-left: 30px;">广告声明</a>
        </p>
    </div>
    <div class="row" style="text-align: center;">
        <p>
            Copyright © 20021-2021 千寻招聘网 版权所有
        </p>
    </div>
</div>

<div class="container" style="margin-top: 15px;">
    <div class="row" style="text-align: center;">
        <p style="color: grey;">
            客服（投诉）电话: 4006 282 835 (9:00 - 18:00);&nbsp;&nbsp;&nbsp;&nbsp;
            违法和不良信息、未成年人举报同客服电话;&nbsp;&nbsp;&nbsp;&nbsp;
            北京人社局电话：12333&nbsp;&nbsp;&nbsp;
            <a href="#" style="color: grey;">拉勾招聘投诉举报制度</a>
            <a href="#" style="color: grey;">网上有害信息举报专区</a>

        </p>
    </div>
</div>

</body>
<!-- 先引入jQuery核心js文件 -->
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.horizontalmenu.js"></script>

//小火箭一飞冲天
<script src="http://cdn.bootcss.com/gsap/1.19.0/TweenMax.min.js"></script>
<script src="http://cdn.bootcss.com/gsap/1.19.0/plugins/ScrollToPlugin.min.js"></script>


<script>
    $(function () {
        $('.ah-tab-wrapper').horizontalmenu({
            itemClick: function (item) {
                $('.ah-tab-content-wrapper .ah-tab-content').removeAttr('data-ah-tab-active');
                $('.ah-tab-content-wrapper .ah-tab-content:eq(' + $(item).index() + ')').attr('data-ah-tab-active', 'true');
                return false; //if this finction return true then will be executed http request
            }
        });
    });

    /* 小火箭一飞冲天样式 */
    $(function () {
        // 返回顶部，绑定gotop1图标和gotop2文字事件
        $("#gotop1,#gotop2").click(function (e) {
            TweenMax.to(window, 1.5, {scrollTo: 0, ease: Expo.easeInOut});
            var huojian = new TimelineLite();
            huojian.to("#gotop1", 1, {rotationY: 720, scale: 0.6, y: "+=40", ease: Power4.easeOut})
                .to("#gotop1", 1, {y: -1000, opacity: 0, ease: Power4.easeOut}, 0.6)
                .to("#gotop1", 1, {
                    y: 0,
                    rotationY: 0,
                    opacity: 1,
                    scale: 1,
                    ease: Expo.easeOut,
                    clearProps: "all"
                }, "1.4");
        });
    });

</script>
</html>
