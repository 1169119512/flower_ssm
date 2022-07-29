<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>花材</title>
    <%--    包含了动态路径basePath标签值--%>
    <%@include file="/pages/common/head.jsp"%>
    <link href="css/send.css"  rel="stylesheet"   type="text/css"/>
    <link href="css/banner-style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<%--包含了头部的菜单栏--%>
<%@include file="/pages/common/body_menu.jsp"%>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/index.js"></script>
<div class="banenr">
    <div class="banner-bg">
        <h3>花材</h3>
    </div></div>
<div class="banner-x"><img src="images/index/花材.jpg" /></div>
<div class="jrcd"><img src="images/index/jrms.png" /></div>
<div class="mt-tabpage" js-tab="2">
    <div class="mt-tabpage-title">
        <a href="javascript:;" class="mt-tabpage-item mt-tabpage-item-cur">玫&nbsp;瑰</a>
        <a href="javascript:;" class="mt-tabpage-item">康乃馨</a>
        <a href="javascript:;" class="mt-tabpage-item">百&nbsp;合</a>
    </div>
    <div class="mt-tabpage-count">
        <ul class="mt-tabpage-cont__wrap">
            <li class="mt-tabpage-item">
                <c:forEach items="${requestScope.flowerRose}" var="flower">
                    <div class="slide-content">
                        <a href="clientFlower/querryFlowerById?id=${flower.id}&url=/pages/store.jsp"><img style="width: 300px; height: 300px; " src="${flower.img_path}/1.jpg"/>
                            <div class="slide-content-text">${flower.flower_name}</div></a></div>
                </c:forEach>
            </li>
            <li class="mt-tabpage-item">
                <c:forEach items="${requestScope.flowerCarnation}" var="flower">
                <div class="slide-content"><a href="clientFlower/querryFlowerById?id=${flower.id}&url=/pages/store.jsp">
                    <img style="width: 300px; height: 300px; " src="${flower.img_path}/1.jpg"/>
                    <div class="slide-content-text">${flower.flower_name}</div></a></div>
                </c:forEach></li>
            <li class="mt-tabpage-item">
            <c:forEach items="${requestScope.flowerLilium}" var="flower">
                <div class="slide-content"><a href="clientFlower/querryFlowerById?id=${flower.id}&url=/pages/store.jsp">
                    <img style="width: 300px; height: 300px; " src="${flower.img_path}/1.jpg"/>
                    <div class="slide-content-text">${flower.flower_name}</div></a></div>
            </c:forEach></li>
        </ul>
    </div>
</div>


<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/mt-tabpage.js"></script>

<script>
    $(function () {
        $('[js-tab=2]').tab({
            curDisplay: 1,
            changeMethod: 'horizontal'
        });

        $('[js-tab=3]').tab({
            curDisplay: 1,
            changeMethod: 'horizontal'
        });

    });
</script>
<hr />


<!--<div class="container">
<div class="box1">
<div class="box1-1"><img src="../images/send/3.jpg" /></div>
<div class="box1-2">
  <p>披萨（Pizza）是一种著名的意大利食物，发源地是意大利的那不勒斯，在全球颇受欢迎，已经成为全球通行的食品。通常做法是用发酵的圆面饼皮上面覆盖番茄酱、奶酪和其他配料，并由烤炉烤制而成</p>
</div>
<div class="box1-3"><img src="../images/send/2.jpg" /></div></div>

<div class="box2">
<div class="box2-1"><div class="box2-1-1">
  <p>手抓饼是从葱抓饼演变而来，起源于中国台湾省。其中可搭配鸡蛋、猪肉叉烧、牛肉饼、粮心香肠、藤椒鸡排、培根、方火腿、鸡柳、蔬菜等辅料。新鲜出炉后的手抓饼，千层百叠，层如薄纸，用手抓之，面丝千连，其外层金黄酥脆，内层柔软白嫩.</p>
</div><div class="box2-1-2"><img src="../images/send/4.jpg" /></div></div>
<div class="box2-2"><div class="box2-2-1"><img src="../images/send/1.jpg" /></div><div class="box2-2-2">
  <p>欧式面包源自欧洲古老世纪，充满异国风味，一般采用各种谷物、果仁和籽作为面团材料。谷物含有丰富的氨基酸、膳食纤维和矿物质，有助提高新陈代谢，而果仁和籽则有丰富的非饱和脂肪，有益身体健康。</p>
</div></div>
<div class="box2-1"><div class="box2-1-1">
  <p>三明治是一种典型英国快餐，以两片面包夹几片肉和奶酪、各种调料制作而成，吃法简便，制作简单，广泛流行于西方各国。</p>
</div><a href="#"><div class="box2-1-2"><img src="../images/send/ljgd.png" /></div></a></div>


</div>


</div>-->


</body>
</html>
