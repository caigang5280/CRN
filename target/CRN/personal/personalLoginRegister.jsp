<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>千寻网</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/htmleaf-demo.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/smile.png"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>

    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/personal/index.js"></script>--%>

    <style type="text/css">
        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }

        .form button {
            font-family: "Microsoft YaHei", "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #4CAF50;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
        }

        .form button:hover, .form button:active, .form button:focus {
            background: #43A047;
        }

        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }

        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }

        .form .register-form {
            display: none;
        }

        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }

        .container:before, .container:after {
            content: "";
            display: block;
            clear: both;
        }

        .container .info {
            margin: 50px auto;
            text-align: center;
        }

        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }

        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }

        .container .info span a {
            color: #000000;
            text-decoration: none;
        }

        .container .info span .fa {
            color: #EF3B3A;
        }

        body {
            background-color: rgb(0, 179, 138);
            /* background: #76b852; /* fallback for old browsers */
            /* background: -webkit-linear-gradient(right, #76b852, #8DC26F); */ /* background: -moz-linear-gradient(right, #76b852, #8DC26F); */ /* background: -o-linear-gradient(right, #76b852, #8DC26F); */ /* background: linear-gradient(to left, #76b852, #8DC26F); */
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .shake_effect {
            -webkit-animation-name: shake;
            animation-name: shake;
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
        }

        @-webkit-keyframes shake {
            from, to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            10%, 30%, 50%, 70%, 90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }

            20%, 40%, 60%, 80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }

        @keyframes shake {
            from, to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            10%, 30%, 50%, 70%, 90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }

            20%, 40%, 60%, 80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }

        p.center {
            color: #fff;
            font-family: "Microsoft YaHei";
        }

        #img {
            position: absolute;
            left: -400px;
        }

        .recommendImg {
            opacity: 90%;
        }

        label.error{
            color: red;
        }

        label.success{
            color: green;
        }


    </style>
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->


</head>
<body>

<c:set value="${pageContext.request.contextPath}" var="path" scope="application"></c:set>

<div class="">
    <header class="htmleaf-header" style="background-color: white; height: 60px;">
        <div class="row" style="border: none;">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header" style="border: none;margin-left: 30px;">
                    <span id="title1" style="color: #00b38a; font-size: 25px;  margin-top: 5px;">千&nbsp;&nbsp;寻&nbsp;&nbsp;网</span>
                    <span id="title2" style="color: black; font-size: 15px;  margin-top: 5px;">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;专&nbsp;注&nbsp;互&nbsp;联&nbsp;网&nbsp;人&nbsp;才&nbsp;招&nbsp;聘</span>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
            </nav>
        </div>
    </header>
</div>


<div class="container">

    <div class="row" style="position: absolute; top: 30px;">
        <!-- 公司图标 -->
        <div class="col-lg-8" id="img" style="background-color: rgb(0,179,138); width: 1000px;height: 300px;">
            <!-- border: 1px solid black; -->
            <div class="row">
                <a href="#"><img src="${pageContext.request.contextPath}/img/baidu1.png" class="recommendImg"
                                 style=" padding: 5px; width: 178px;height: 110px; border-radius: 10% ;"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/meituanwaiping.png" class="recommendImg"
                                 style="padding: 5px; width: 180px;height: 110px; border-radius: 10%"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/wangyi.png" class="recommendImg"
                                 style=" padding: 5px; width: 178px;height: 110px;border-radius: 10%"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/xindongfang.png" class="recommendImg"
                                 style=" padding: 5px; width: 178px;height: 110px;border-radius: 10%"/></a>
            </div>

            <div class="row">
                <a href="#"><img src="${pageContext.request.contextPath}/img/haoweilai.png" class="recommendImg"
                                 style=" padding: 5px; width: 240px;height: 150px; border-radius: 10% ;"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/beike.png" class="recommendImg"
                                 style="padding: 5px; width: 240px;height: 150px; border-radius: 10%"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/zhaoshangyinghang.png" class="recommendImg"
                                 style=" padding: 5px; width: 240px;height: 150px;border-radius: 10%"/></a>
            </div>

            <div class="row">
                <a href="#"><img src="${pageContext.request.contextPath}/img/qu.png" class="recommendImg"
                                 style=" padding: 5px; width: 360px;height: 150px; border-radius: 10% ;"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/bilibili.png" class="recommendImg"
                                 style="padding: 5px; width: 180px;height: 150px; border-radius: 10%"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/didi.png" class="recommendImg"
                                 style=" padding: 5px; width: 180px;height: 150px;border-radius: 10%"/></a>
            </div>
            <div class="row">
                <a href="#"><img src="${pageContext.request.contextPath}/img/jinshanyun.png" class="recommendImg"
                                 style=" padding: 5px; width: 360px;height: 150px; border-radius: 10% ;"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/mayijinfu.png" class="recommendImg"
                                 style="padding: 5px; width: 180px;height: 150px; border-radius: 10%"/></a>
                <a href="#"><img src="${pageContext.request.contextPath}/img/jingdong.png" class="recommendImg"
                                 style=" padding: 5px; width: 180px;height: 150px; border-radius: 10%"/></a>
            </div>
        </div>


        <!-- 登录注册 -->
        <div class="col-lg-4" style="position: absolute; top: 50px;">
            <div id="wrapper" class="login-page" style="position: absolute; left: 380px;">
                <div id="login_form" class="form" >
                    <p>
						 <span>
							 <span style="color: rgb(0,179,138);font-size: 30px;">一键&nbsp;</span>
							 <span style="font-size: 20px;">登录·注册&nbsp;</span>
						 <span style="font-size: 20px; ">轻松获高薪</span>
						 </span>
                    </p>
                    <form action="/personal?method=register" method="post" class="register-form" id="personalRegister">
                        <input type="text" placeholder="用户名"  name="username" id="username"/>
                        <input type="password" placeholder="密码"  name="password" id="registerPassword"/>
                        <input type="password" placeholder="确认密码"  name="repassword" />
                        <span id="registerRePasswordMsg"></span>
                        <input type="email" placeholder="电子邮件" id="r_emial" name="email"/>
                        <input type="text" placeholder="手机号" id="r_phone" name="phone"/>
                        <span id="phoneMsg"></span>
                        <button type="submit" id="create" style="background-color: rgb(0,179,138);">立即注册</button>
                        <p class="message">已经有了一个账户? <a href="#">立刻登录</a></p>
                    </form>

                    <%--登录--%>
                    <form action="/personal?method=login" method="post" id="personalLogin" class="login-form">
                        <input type="text" placeholder="用户名" id="user_name" name="loginUsername" value="${username}"/>
                        <input type="password" placeholder="密码" id="password" name="loginPassword"/>
                        <button type="submit" id="login" style="background-color: rgb(0,179,138);">登 录</button>
                        <p class="message">还没有账户? <a href="#">立刻创建</a></p>
                    </form>
                </div>
            </div><!-- wrapper -->
        </div><!-- col-lg-4 -->
    </div>

</div><!-- container -->


<div id="" style="text-align: center; margin-top: 540px;">
    <img src="img/登录底部.png">
</div>
</body>

<%--<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>--%>
<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"><\/script>')</script>

<!-- 1.引入jQuery插件 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<!-- 2.引入校验插件 -->
<script src="${pageContext.request.contextPath}/validate/jquery.validate.min.js"></script>

<script src="${pageContext.request.contextPath}/validate/validate.js"></script>

<script type="text/javascript">
    //切换登录注册
    $(function () {
        $('.message a').click(function () {
            $('form').animate({
                height: 'toggle',
                opacity: 'toggle'
            }, 'slow');
        });
    });

</script>
</html>