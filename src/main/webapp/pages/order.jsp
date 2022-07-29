<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/12/7
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单详情</title>
    <%@include file="/pages/common/head.jsp"%>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/aos.css" rel="stylesheet" type="text/css" />

    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="js/index.js"></script>

    <link href="css/banner-style.css" rel="stylesheet" type="text/css" />
    <link href="css/cart.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <%@ include file="/pages/common/body_menu.jsp"%>

    <%--静态包含，登录 成功之后的菜单 --%>

    <div id="main">
        <div class="word"><span class="wel_word" >我的订单</span></div>
        <br>
    <table>
        <tr class="table_head">
            <td>日期</td>
            <td>金额</td>
            <td>状态</td>
            <td>详情</td>
        </tr>

        <c:forEach items="${sessionScope.orders}" var="order">
            <tr>
                <td>${order.create_time}</td>
                <td>${order.price}</td>
                <c:if test="${order.status == 0}"><td>未发货</td></c:if>
                <c:if test="${order.status == 1}"><td>已发货</td></c:if>
                <c:if test="${order.status == 2}"><td>已签收</td></c:if>
                <td><a href="order/watchOrdersDetailByOrderId?orderId=${order.order_id}">查看详情</a></td>
            </tr>
        </c:forEach>


    </table>


</div>


<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>
