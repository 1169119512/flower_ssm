<%--
  Created by IntelliJ IDEA.
  User: 王
  Date: 2020/12/6
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="css/body_menu.css" rel="stylesheet"  type="text/css"/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<div class="menus menus1">
    <h1>"心"花网
    </h1>
    <ul>
        <div class="bg"></div>
        <li><span><a href="clientFlower/page?url=/pages/client/index.jsp" target="blank">首页</a></span></li>
        <li><span><a href="pages/send.jsp">送礼</a></span></li>
        <li><span><a href="clientFlower/querryNightFlowersByFlowerKind?url=/pages/flower.jsp">花材</a></span></li>
        <li><span><a href="clientFlower/page?url=/pages/client/index.jsp#star">星座</a></span></li>
        <li><span><a href="pages/cart.jsp">购物车</a></span></li>
        <li><span><a href="order/watchOrdersById">订单</a></span></li>
        <li><span><a href="flower/page">后台</a></span></li>
        <li  style="width:120px; margin-left:0;  padding-left:0;" >
            <div class="denglu_id" >
            <c:if test="${empty sessionScope.username}">
                <a href="pages/signin.jsp"><img src="images/index/signin.png"></a>
            </c:if>
            <c:if test="${not empty sessionScope.username}">
                <span style="padding-left:15px; font-family:仿宋">${sessionScope.username}</span>&nbsp;&nbsp;
                <a href="user/logout"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
                <%--                <a href="user/logout"><img src="images/index/exit.png"></a>--%>
            </c:if></div>
        </li>
        <div class="clear"></div>
    </ul>
<%--    <div class="clear">--%>
<%--    </div>--%>
</div>
