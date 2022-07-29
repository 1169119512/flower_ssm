<%--
  Created by IntelliJ IDEA.
  User: 王
  Date: 2020/12/6
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>赠礼</title>
<%--    包含了动态路径basePath标签值--%>
    <%@include file="/pages/common/head.jsp"%>
    <link href="css/aos.css" rel="stylesheet" type="text/css" />

    <link href="css/banner-style.css" rel="stylesheet" type="text/css" />
    <link href="css/flower.css" rel="stylesheet"  type="text/css"/>
</head>
<body>
<%--包含了头部的菜单栏--%>
<%@include file="/pages/common/body_menu.jsp"%>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/index.js"></script>
<div class="banenr">
    <div class="banner-bg">
        <h3>赠礼</h3>
    </div></div>
<div class="banner-x"><img src="images/index/送礼_情感.png"></div>
<div class="container">
    <div class="jrcd"><img src="images/index/biaoqian.jpg" /></div>

    <section data-aos="fade-up">
        <div class="card">
            <div class="card-img-left">
                <a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=18">
                    <img src="images/flower/pic1.jpg" /></a></div>
            <div class="card-text">
                <img src="images/flower/初心.png" />
            </div>
        </div>
    </section>

    <section data-aos="fade-left">
        <div class="card">
            <div class="card-text">
                <img src="images/flower/温柔以待.png">
            </div>
            <div class="card-img-right"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=19">
                <img src="images/flower/pic2.jpg" /></a></div>
        </div>
    </section>


    <section data-aos="fade-right">
        <div class="card" >
            <div class="card-img-left">
                <a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=13">
                <img src="images/flower/心向1.jpg" /></a></div>
            <div class="card-text">
                <img src="images/flower/暖阳.png">
            </div>
        </div>
    </section>


    <section data-aos="slide-left">
        <div class="card" >
            <div class="card-text">
                <img src="images/flower/一鹿.jpg">
            </div>
            <div class="card-img-right">
                <a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=14">
                    <img src="images/flower/pic4.jpg" /></a></div>
        </div>
    </section>


    <section data-aos="slide-right">
        <div class="card" >
            <div class="card-img-left">
            <a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=15">
                <img src="images/flower/pic5.jpg" /></a></div>
            <div class="card-text">
                <img src="images/flower/因为爱2.png" />
            </div>
        </div>
    </section>

    <section data-aos="zoom-in-left">
        <div class="card right">
            <div class="card-text">
                <img src="images/flower/留住时光.png" style="width:550px; float:left; ">
            </div>
            <div class="card-img-right">
                <a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=17">
                    <img src="images/flower/pic6.jpg" /></a></div>
        </div>
    </section>




</div>

<script type="text/javascript" src="js/aos.js"></script>
<script>
    AOS.init({

        easing: 'ease-out-back',
        duration: 2000
    });
</script>

<%--包含尾部信息--%>
<%@include file="/pages/common/footer.jsp"%>



</body>
</html>