<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理</title>
	<%-- 静态包含base标签，css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>

	<link href="css/banner-style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin.css" rel="stylesheet"  type="text/css" />
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="js/index.js"></script>
	<script type="text/javascript">

		$(function () {
			$("a.deleteClass").click(function () {
				return confirm("你确定要删除["+$(this).parent().parent().find("td:first").text()+"]吗？");

			})
		})
	</script>

</head>

	<%@include file="/pages/common/body_menu.jsp"%>

	<div id="box-border">
        <div class="pull-left">
            <div class="hd"><b></b><span>&nbsp;&nbsp;&nbsp;后台管理</span></div>
                <ul class="bd">
                    <li style="left: -10px;position: relative;background: pink;border-radius: 25px;">
                        <a href="pages/manager/flower_manager.jsp"><b></b><i class="fa fa-refresh"></i>查看商品</a>
                    </li>
                    <li>
                        <a href="pages/manager/flower_edit.jsp"><b></b><i class="fa fa-plus-square"></i>修改商品</a>
                    </li>
                    <li>
                        <a href="order/watchOrders?url=/pages/manager/order_manager.jsp"><b></b><i class="fa fa-github-alt"></i>订单处理</a>
                    </li>
                </ul>
        </div>
        <div class="pull-right">
            <table class="store_all" width="890px" border="2px solid pink" align="center" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC" style="border-bottom:#F0F0F0">
                <tr height="40px">
                    <td colspan="4" align="center">商品库</td>
                    <td align="center"><a href="pages/manager/flower_edit.jsp">添加商品</a></td>
                </tr>
                <tr>
                    <td align="center">花名</td>
                    <td align="center">价格</td>
                    <td align="center">花材</td>
                    <td align="center" colspan="2">操作</td>
                </tr>
                <c:forEach items="${requestScope.page.items}" var="flowers">
                <tr>
                    <td align="center">${flowers.flower_name}</td>
                    <td align="center">￥${flowers.price}</td>
                    <td align="center">${flowers.pack}</td>
                    <td align="center"><a href="flower/getFlower?id=${flowers.id}&pageNo=${requestScope.page.pageNo}">修改</a></td>
                    <td align="center"><a class="deleteClass"  href="flower/delete?id=${flowers.id}&pageNo=${requestScope.page.pageNo}">删除</a></td>
                </tr>
                </c:forEach>
                <tr colspan="5">
                    <td colspan="5"><%@include file="/pages/common/page_nav.jsp"%></td>
                </tr>
            </table>
	    </div>
    </div>
    <%@include file="/pages/common/footer.jsp"%>
</body>
</html>