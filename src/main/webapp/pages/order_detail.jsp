<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/12/9
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单详情界面</title>
    <%@ include file="/pages/common/head.jsp"%>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/banner-style.css" rel="stylesheet" type="text/css" />
    <link href="css/cart.css" rel="stylesheet" type="text/css" />
    <style>
        .detail_head{
            height:40px;
        }

        #footer{
            background-color:#ffffff !important;
            color:#333333 !important;
        }
    </style>
</head>
<body>
    <%@ include file="/pages/common/body_menu.jsp"%>
    <div id="main">

        <table>
            <tr class="detail_head">
                <td>物品编号</td>
                <td>物品</td>
                <td>数量</td>
                <td>单价</td>
                <td>总价</td>
            </tr>

            <c:if test="${not empty sessionScope.orderItems}">
                <c:forEach items="${sessionScope.orderItems}" var="orderItem">
                    <tr>
                        <td>${orderItem.id}</td>
                        <td>${orderItem.name}</td>
                        <td>${orderItem.count}</td>
                        <td>${orderItem.price}</td>
                        <td>${orderItem.total_price}</td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
    </div>

    <%@include file="/pages/common/footer.jsp"%>
</body>
</html>
