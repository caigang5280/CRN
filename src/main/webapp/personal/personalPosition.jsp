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

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>

</head>

<style>
    /* 整体 */
    body {
        background-color: rgb(246, 246, 248);
    }


    /* 搜索热门职位 */
    .searchHotPosition {
        margin-left: 20px;
        color: gray;
        text-decoration: none;
    }

    td {
        text-align: center;
    }

    #hot {
        width: 800px;
        margin-left: 250px;
    }

    .all:hover {
        background-color: lightseagreen;
        color: white;
        width: 00px;

    }

    .adress {
        background-color: #F0EFEE;
        width: 800px;
        height: 40px;
        text-align: center;
    }

    .all {
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

    .dropdown-toggle:hover {
        background-color: lightseagreen;
    }

</style>

<body>
<jsp:include page="/personalHeader.jsp"></jsp:include>
<!-- 搜索栏 -->
<div class="container">
    <div class="row" style="text-align: left; margin-left: 10px;">
        <div class="col-lg-10" style="text-align: left;">
            <div class="input-group" style="text-align: left;">
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

<div class="container" id="hot">
    <div class="row" style="margin-left: -180px">
        <span style="color: gray;"><strong>相关搜索:</strong></span>
        <a class="searchHotPosition" href="#">架构师</a>
        <a class="searchHotPosition" href="#">IC工程师</a>
        <a class="searchHotPosition" href="#">数据挖掘工程师</a>
        <a class="searchHotPosition" href="#">网络应用工程师</a>
        <a class="searchHotPosition" href="#">运维工程师</a>
        <a class="searchHotPosition" href="#">测试工程师</a>
        <a class="searchHotPosition" href="#">安全工程师</a>
    </div>
    <br/>
</div>
<br/>

<!-- 工作地点筛选 -->
<div class="container">
    <div class="row" style="margin-left: 25px;">
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
    </div>
</div>

<br/>

<!-- 工作筛选 -->
<div class="container">
    <div class="row" style="margin-left: 25px;">
        <div class="col-lg-9 col-xs-9">
            <!-- 工作经验 button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
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
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
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
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
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

            <!-- 融资阶段 button -->
            <div class="btn-group hidden-xs">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    <strong>融资阶段</strong> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">不限</a></li>
                    <li><a href="#">未融资</a></li>
                    <li><a href="#">天使轮</a></li>
                    <li><a href="#">A轮</a></li>
                    <li><a href="#">B轮</a></li>
                    <li><a href="#">C轮</a></li>
                    <li><a href="#">D轮以上</a></li>
                    <li><a href="#">上市公司</a></li>
                    <!-- <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li> -->
                </ul>
            </div><!-- btn-group -->

            <!-- 公司规模 button -->
            <div class="btn-group hidden-xs">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    <strong>公司规模</strong> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">不限</a></li>
                    <li><a href="#">少于15人</a></li>
                    <li><a href="#">50-150人</a></li>
                    <li><a href="#">150-500人</a></li>
                    <li><a href="#">500-2000人</a></li>
                    <li><a href="#">2000人以上</a></li>
                    <!-- <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li> -->
                </ul>
            </div><!-- btn-group -->

        </div><!-- col-lg-10 -->
        <div class="col-lg-3">
            <button style="border: none;">清除筛选</button>
        </div>

    </div> <!-- row -->
</div> <!-- container -->
<br/>
<br/>

<!-- 职位工作表 -->
<div class="container">



    <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
        <div>
            <div>
                <span style="margin-left: 60px; font-size: 17px; color: lightseagreen; cursor:pointer">Java高级开发工程师(J18867)[北京]</span>
                <span style="margin-left:200px; color: lightseagreen; cursor:pointer;font-size: 17px">安居客</span>
                <img style="margin-left: 200px;" width="60px" height="60px"
                     src="https://www.lgstatic.com/thumbnail_120x120/image1/M00/00/0D/CgYXBlTUWCCAUO82AAC1G1P4rp8319.jpg"
                     alt="安居客">
            </div>
            <div>
                <span style="margin-left: 60px;color: red;font-size: 17px">18k-35k</span>
                <span style="margin-left: 10px;font-size: 13px;font-weight: normal">经验3-5年/本科</span>
                <span style="margin-left: 302px;font-size: 14px">居住服务/上市公司/500-2000人</span>
            </div>
        </div>

        <br/>
        <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
            <span style="font-size: 10px;border: 1px darkgray solid; margin-left: 60px;">JavaScript</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">Socket</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">Spring</span>
            <span style="margin-left: 320px;font-size: 14px;">“重点业务，扁平管理，晋升规范”</span>
        </div>
    </div><!-- 职位工作表container -->
    <br/>

    <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
        <div>
            <div>
                <span style="margin-left: 60px; font-size: 17px; color: lightseagreen; cursor:pointer">Java开发工程师[北京·朝阳区]</span>
                <span style="margin-left:240px; color: lightseagreen; cursor:pointer;font-size: 17px">脉思智能</span>
                <img style="margin-left: 200px;" width="60px" height="60px"
                     src="https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/3E/AA/Cgp9HWCaa9OALouKAAApq3pbVLs281.png"
                     alt="脉思智能">
            </div>
            <div>
                <span style="margin-left: 60px;color: red;font-size: 17px">13k-20k</span>
                <span style="margin-left: 10px;font-size: 13px;font-weight: normal">经验3-5年/本科</span>
                <span style="margin-left: 302px;font-size: 14px">企业服务，数据服务/不需要融资/15-50</span>
            </div>
        </div>

        <br/>
        <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
            <span style="font-size: 10px;border: 1px darkgray solid; margin-left: 60px;">IT技术服务|咨询</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">区块链</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">数据产品</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">TO B</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">TO C</span>
            <span style="margin-left: 210px;font-size: 14px;">“周末双休 五险一金 交通方便”</span>
        </div>
    </div><!-- 职位工作表container -->
    <br/>

    <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
        <div>
            <div>
                <span style="margin-left: 60px; font-size: 17px; color: lightseagreen; cursor:pointer">广告投放设计实习生[北京·朝阳区]</span>
                <span style="margin-left:200px; color: lightseagreen; cursor:pointer;font-size: 17px">小牛互联</span>
                <img style="margin-left: 200px;" width="60px" height="60px"
                     src="https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/5D/8A/CgoB5lsxj36Ab-YXAAAwO4ZRW1U882.png"
                     alt="小牛互联">
            </div>
            <div>
                <span style="margin-left: 60px;color: red;font-size: 17px">4k-5.5k</span>
                <span style="margin-left: 10px;font-size: 13px;font-weight: normal">经验在校/应届/本科</span>
                <span style="margin-left: 274px;font-size: 14px">游戏/不需要融资/150-500人</span>
            </div>
        </div>

        <br/>
        <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
            <span style="font-size: 10px;border: 1px darkgray solid; margin-left: 60px;">团队靠普</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">踏实做事</span>
            <span style="font-size: 10px;border: 1px darkgray solid;">成长快</span>
            <span style="margin-left: 310px;font-size: 14px;">“员工餐、零食下午茶、交通补贴、法定假日”</span>
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

<br/>
<br/>

<div class="container">
    <div class="row" style="background-color: white;height: 100px;">
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
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
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.horizontalmenu.js"></script>


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
</script>
</html>
