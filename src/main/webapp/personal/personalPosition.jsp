<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form action="/job?method=findAllPositions" method="post">
                <div class="input-group" style="text-align: left;">
                    <input type="text" class="form-control" placeholder="Search for..." style="height: 40px;"
                           name="queryJobTitle" value="${vo.queryJobTitle}">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="submit"
                                style="height: 40px;width: 100px;background-color: #00b38a;color: white;">搜索</button>
                    </span>
                </div><!-- /input-group -->
            </form>
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
</div>
<br/>

<!-- 热门职位 -->

<div class="container" id="hot">
    <div class="row" style="margin-left: -180px">
        <span style="color: gray;"><strong>相关搜索:</strong></span>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&pageNow=${page}&queryJobTitle=架构师&queryJobExperience=${vo.queryJobExperience}&queryEducation=${vo.queryEducation}&querySalary=${vo.querySalary}&queryJobAddress=${vo.queryJobAddress}" >架构师</a>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&queryJobTitle=IC工程师" >IC工程师</a>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&queryJobTitle=数据挖掘工程师" >数据挖掘工程师</a>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&queryJobTitle=网络应用工程师" >网络应用工程师</a>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&queryJobTitle=运维工程师" >运维工程师</a>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&queryJobTitle=测试工程师" >测试工程师</a>
        <a class="searchHotPosition" href="${path}/job?method=findAllPositions&queryJobTitle=安全工程师" >安全工程师</a>
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

    <c:forEach items="${vo.recruitInfos}" var="recruitInfo">
        <div class="row" style="border: 1px darkgray solid; width: 900px; margin-left: 30px; border-radius: 10px;">
            <div>
                <div>
                    <span style="margin-left: 60px; font-size: 17px; color: lightseagreen; cursor:pointer">${recruitInfo.jobTitle}[${recruitInfo.jobAddress}]</span>
                    <span style="margin-left:200px; color: lightseagreen; cursor:pointer;font-size: 17px">${recruitInfo.companyName}</span>
                    <img style="margin-left: 200px;" width="60px" height="60px"
                         src="${path}${recruitInfo.companyLogo}">
                </div>
                <div>
                    <span style=" margin-left: 60px;color: red;font-size: 17px">${recruitInfo.salary}</span>
                    <span style="margin-left: 10px;font-size: 13px;font-weight: normal">工作经验${recruitInfo.jobExperience}/${recruitInfo.education}</span>
                    <span style="margin-left: 302px;font-size: 14px">${recruitInfo.jobType}/${recruitInfo.department}/${recruitInfo.jobAddress}</span>
                </div>
            </div>
            <br/>
            <div style="background-color: #F0EFEE;height: 30px; width: 898px;border-radius: 10px;">
                <span style="font-size: 10px;border: 1px darkgray solid; margin-left: 60px;">${recruitInfo.jobAddress}</span>
                <span style="margin-left: 320px;font-size: 14px;">"${recruitInfo.jobDescription}"</span>
            </div>
        </div>
        <br/>
    </c:forEach>

</div><!-- 职位工作表container -->

<%--分页--%>
<div class="container">
    <div class="row" style="text-align: center;">
        <div style="width: 380px; margin: 0 auto; margin-top: 50px;">
            <%--查询商品列表数据时，未发现符合条件的数据，则不显示翻页--%>
            <c:if test="${vo.recruitInfos.size() eq 0}">
                <img src="${path}/img/noneDate.JPG"/>
            </c:if>

            <c:if test="${vo.recruitInfos.size() ne 0}">

                <ul class="pagination" style=" text-align: center; margin-top: 10px;">

                        <%--若当前页码是第一页，则上一页按钮失效--%>
                    <c:if test="${vo.pageNow eq 1}">
                        <li class="disabled"><a href="#" aria-label="Previous"><span
                                aria-hidden="true">&laquo;</span></a></li>
                    </c:if>

                        <%--若当前页码不是第一页，则可以点击上一页--%>
                    <c:if test="${vo.pageNow ne 1}">
                        <li>
                            <a href="${path}/job?method=findAllPositions&pageNow=${vo.pageNow-1}&queryJobTitle=${vo.queryJobTitle}&queryJobExperience=${vo.queryJobExperience}&queryEducation=${vo.queryEducation}&querySalary=${vo.querySalary}&queryJobAddress=${vo.queryJobAddress}"
                               aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                    </c:if>

                        <%--循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击--%>
                    <c:forEach begin="1" end="${vo.myPages}" var="page">

                        <c:if test="${vo.pageNow eq page}">
                            <li class="active"><a href="#">${page}</a></li>
                        </c:if>

                        <c:if test="${vo.pageNow ne page}">
                            <li><a href="${path}/job?method=findAllPositions&pageNow=${page}&queryJobTitle=${vo.queryJobTitle}&queryJobExperience=${vo.queryJobExperience}&queryEducation=${vo.queryEducation}&querySalary=${vo.querySalary}&queryJobAddress=${vo.queryJobAddress}">${page}</a></li>
                        </c:if>
                    </c:forEach>

                        <%--若当前页码是最后一页，则下一页按钮失效--%>
                    <c:if test="${vo.pageNow eq vo.myPages}">
                        <li class="disabled"><a href="#" aria-label="Previous"><span
                                aria-hidden="true">&raquo;</span></a></li>
                    </c:if>

                        <%--若当前页码不是最后一页，则可以点击下一页--%>
                    <c:if test="${vo.pageNow ne vo.myPages}">
                        <li>
                            <a href="${path}/job?method=findAllPositions&pageNow=${vo.pageNow+1}&queryJobTitle=${vo.queryJobTitle}&queryJobExperience=${vo.queryJobExperience}&queryEducation=${vo.queryEducation}&querySalary=${vo.querySalary}&queryJobAddress=${vo.queryJobAddress}"
                               aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                    </c:if>
                </ul>
            </c:if>
        </div>
    </div>
</div>

<br/>
<br/>

<div class="container">
    <div class="row" style="background-color: white;height: 100px;">
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <img src="${path}/img/Logo.png" style="width: 80px;margin-top: 10px;"/>

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
