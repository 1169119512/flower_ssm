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
    <title>商品界面</title>
    <%--    包含了动态路径basePath标签值--%>
    <%@include file="/pages/common/head.jsp"%>
    <link href="css/banner-style.css" rel="stylesheet" type="text/css" />
    <link href="css/store.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(function () {
            $("button.addToCart").click(function () {
                var flowerId = $(this).attr('flowerId');
                location.href="<%=basePath%>cart/addItem?id="+flowerId;
            })
            $("img.cartImg").onmouseover(function () {
                $("#changeImg").src= $("img.cartImg").src;
            })
        })
    </script>

</head>
<body>



<%@include file="/pages/common/body_menu.jsp"%>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/index.js"></script>
<div class="banenr">
    <div class="banner-bg">
        <h3>商品详情</h3>
    </div></div>





<div class="flower">
    <div class="swiper-container"><img id="changeImg" src="${requestScope.flower.img_path}1.jpg" /></div>
    <div class="flower-text">
        <p class="title-name">${requestScope.flower.flower_name}</p>
        <div class="price">
            <div class="price-item">
                <span class="price-label">售价</span>
                <span class="price-content">￥${requestScope.flower.price}</span>
            </div>
        </div>
        <div class="huayu">
            <div class="huayu-item">
                <span class="huayu-label">花语</span>
                <p class="huayu-content">${requestScope.flower.flower_language}</p>
            </div>
            <div class="huayu-item">
                <span class="huayu-label">材料</span>
                <p class="huayu-content">${requestScope.flower.material}</p>
            </div>
            <div class="huayu-item">
                <span class="huayu-label">包装</span>
                <p class="huayu-content">${requestScope.flower.pack}</p>
            </div>
        </div>

        <!-- 动态选择图片 -->
        <div class="preview-list clearfix" id="swiperController">
            <div class="preview-list-item">
                <img class="cartImg" src="${requestScope.flower.img_path}1.jpg" alt="" onclick="topggleForm(1)"  value="1">
            </div>
            <div class="preview-list-item">
                <img class="cartImg" src="${requestScope.flower.img_path}2.jpg" alt="" onclick="topggleForm(2)" value="2">
            </div>
            <div class="preview-list-item">
                <img class="cartImg" src="${requestScope.flower.img_path}3.jpg" alt="" onclick="topggleForm(3)" value="3">
            </div>
            <div class="preview-list-item">
                <img class="cartImg" src="${requestScope.flower.img_path}4.jpg" alt="" onclick="topggleForm(4)" value="4">
            </div>
        </div>

        <script type="text/javascript">
            function topggleForm(number){
                <%--"${requestScope.flower.img_path}"--%>
                var string="${requestScope.flower.img_path}"+number+".jpg";
                document.getElementById("changeImg").src=string;
            }
        </script>

        <div class="flower_add">
            <button flowerId="${requestScope.flower.id}"  class="addToCart">加入购物车</button>
        </div>
    </div>
</div>



<%--包含尾部信息--%>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>
