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
  <%--    包含了动态路径basePath标签值--%>
  <%@include file="/pages/common/head.jsp"%>
  <link href="css/banner-style.css" rel="stylesheet" type="text/css"/>
  <script src="js/swiper.min.js"></script>
  <script type="text/javascript" src="js/index.js"></script>

  <title>”花“ 心   网</title>

  <link href="css/index.css" rel="stylesheet" type="text/css"/>
  <link href="css/swiper.min.css" rel="stylesheet" type="text/css" />
</head>


<body>
<%--包含了头部的菜单栏--%>
<%@include file="/pages/common/body_menu.jsp"%>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/index.js"></script>

<div class="slider">
  <div class="slider1">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><a href="clientFlower/querryNightFlowersByFlowerKind?url=/pages/flower.jsp" target="new"><img src="images/index/爱情首页.png"/></a></div>
        <div class="swiper-slide"><a href="clientFlower/querryNightFlowersByFlowerKind?url=/pages/flower.jsp" target="new"><img src="images/index/婚姻首页.png"/></a></div>
        <!--<div class="swiper-slide"><a href="send.html" target="new"><img src="../images/index/生日首页.png"/></a></div>-->
        <div class="swiper-slide"><a href="clientFlower/querryNightFlowersByFlowerKind?url=/pages/flower.jsp" target="new"><img src="images/index/祝贺首页.png"/></a></div>


      </div>
      <!-- Add Pagination -->
      <div class="swiper-pagination"></div>
      <!-- Add Arrows -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>

    <!-- Swiper JS -->


    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper('.swiper-container', {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    </script>






  </div>
</div>

<div id="all" class="introduce" style="padding-left:30px">商品清单</div>
<div class="lide">
  <table class="introduce-content" >
    <tr>
      <c:forEach items="${requestScope.page.items}" var="flower">
        <td class="content-td">
          <a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=${flower.id}"><img src="${flower.img_path}1.jpg"/></a></td>
        </c:forEach>
    </tr>
    <tr>
      <c:forEach items="${requestScope.page.items}" var="flower">
        <td class="content-td-text">${flower.flower_name}</td>
      </c:forEach>

    </tr>
  </table>
  <%@include file="/pages/common/page_nav.jsp"%>
</div>



<div id="direction" class="introduce" style="padding-left:30px">商品推荐</div>
<a name="star">
  <div class="ms-ex">
    <div class="ms-exhibition">
      <p></p></div>
    <div class="scroll">
      <marquee direction="right" behavior="alternate" scrolldelay="200" onmouseover="stop()" onmouseout="start()">
        <table width="2400" border="0" cellspacing="20"  cellpadding="0">
          <tr>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=1"><img src="images/all_flower/star/1/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=2"><img src="images/all_flower/star/2/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=3"><img src="images/all_flower/star/3/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=4"><img src="images/all_flower/star/4/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=5"><img src="images/all_flower/star/5/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=6"><img src="images/all_flower/star/6/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=7"><img src="images/all_flower/star/7/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=8"><img src="images/all_flower/star/8/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=9"><img src="images/all_flower/star/9/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=10"><img src="images/all_flower/star/10/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=11"><img src="images/all_flower/star/11/1.jpg"/></a></td>
            <td class="scroll-td"><a href="clientFlower/querryFlowerById?url=/pages/store.jsp&id=12"><img src="images/all_flower/star/12/1.jpg"/></a></td>
          </tr>
          <tr>
            <td class="scroll-td-text">水瓶♒</td>
            <td class="scroll-td-text">双鱼♓</td>
            <td class="scroll-td-text">白羊♈</td>
            <td class="scroll-td-text">金牛♉</td>
            <td class="scroll-td-text">双子♊</td>
            <td class="scroll-td-text">巨蟹♋</td>
            <td class="scroll-td-text">狮子♌</td>
            <td class="scroll-td-text">天秤♎</td>
            <td class="scroll-td-text">处女♍</td>
            <td class="scroll-td-text">天蝎♏</td>
            <td class="scroll-td-text">射手♐</td>
            <td class="scroll-td-text">摩羯♑</td>
          </tr>
        </table>
      </marquee>
    </div>
  </div>
  </div>
  <%--包含尾部信息--%>
  <%@include file="/pages/common/footer.jsp"%>
</body>
</html>