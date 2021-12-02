<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<style>
    .app:hover {
        background-color: lightseagreen;
        color: white;
        border: 0px;
    }

    .font:hover {
        color: lightseagreen
    }

    body {
        background-color: rgb(246, 246, 248);
    }
</style>

<body>
<br>
<br>
<br>
<br>

<div class="container" style="background-color: white; width: 1300px;height: 240px;">
    <div class="row">
        <div class="col-lg-3 col-md">
            <div style="display: inline-block;">
                <input id="qian" class="app" type="button" value="下载千寻APP"
                       style="width: 140px;height: 50px;margin-top: 40px; border: 1px solid lightseagreen;"
                       onmouseover="document.getElementById('img11').style.display='block';"
                       onmouseout="document.getElementById('img11').style.display='none';"/>
            </div>
            <div id="img1" style="display: none;display: inline-block;">
                <img id="img11" src="${pageContext.request.contextPath}/img/app.PNG" style="display:none;width: 120px;height: 120px;margin-top: -80px;margin-left: 160px;"/>
            </div>
            <br/>
            <div style="display: inline-block;">
                <input class="app" type="button" value="微信小程序" style="width: 140px;height: 50px;margin-top: 40px;"
                       onmouseover="document.getElementById('img2').style.display='block';"
                       onmouseout="document.getElementById('img2').style.display='none';"/>
            </div>
            <div id="img2" style="display: none;">
                <img src="${pageContext.request.contextPath}/img/APP1.PNG" style="width: 120px;height: 120px;margin-top: -80px;margin-left: 160px;"/>
            </div>
        </div>
        <div class="col-lg-9" style="margin-top: 40px;">
            <div class="col-lg-3">
                <span><strong style="font-size: 18px;">企业服务</strong></span>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black; "><span class="font">招聘抢人宝典</span></a>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black;"><span class="font">公司搜索</span></a>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black; "><span class="font">千寻APP</span></a>
            </div>
            <div class="col-lg-3">
                <span><strong style="font-size: 18px;">用户帮助</strong></span>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black; "><span class="font">用户协议</span></a>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black;"><span class="font">隐私政策</span></a>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black; "><span class="font">在线提问</span></a>
            </div>
            <div class="col-lg-3">
                <span><strong style="font-size: 18px;">联系方式</strong></span>
                <br/>
                <br/>
                <span style="color: lightseagreen;">服务热线：4006 2828 35</span>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black;"><span class="font">千寻微博</span></a>
                <br/>
                <br/>
                <a style="text-decoration: none; cursor: pointer; color: black; "><span class="font">联系我们</span></a>
            </div>
        </div>
    </div>
</div>

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
</body>
<!-- 先引入jQuery核心js文件 -->
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

