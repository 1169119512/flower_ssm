<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>订单处理</title>
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
			<li >
				<a href="pages/manager/flower_manager.jsp"><b></b><i class="fa fa-refresh"></i>修改商品</a>
			</li>
			<li>
				<a href="pages/manager/flower_edit.jsp"><b></b><i class="fa fa-plus-square"></i>添加商品</a>
			</li>
			<li style="left: -10px;position: relative;background: pink;border-radius: 25px;">
				<a href="order/watchOrders?url=/pages/manager/order_manager.jsp"><b></b><i class="fa fa-github-alt"></i>订单处理</a>
			</li>
		</ul>
	</div>
	<div class="pull-right">
		<table class="store_all" width="890px" border="2px solid pink" align="center" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC" style="border-bottom:#F0F0F0">
			<tr height="40px">
				<td colspan="4" align="center">订单处理</td>
			</tr>

			<tr>
				<td align="center" style="background-color:#deddc9">创建订单时间</td>
				<td align="center" style="background-color:#deddc9">订单价格</td>
				<td align="center" style="background-color:#deddc9">订单详情</td>
				<td align="center" style="background-color:#deddc9">发货</td>
			</tr>

			<c:forEach items="${sessionScope.orders}" var="order">
				<tr>
					<td align="center" style="background-color:#deddc9">${order.create_time}</td>
					<td align="center" style="background-color:#deddc9">${order.price}</td>
					<td align="center" style="background-color:#deddc9"><a href="order/watchOrdersDetailByOrderId?orderId=${order.order_id}">查看详情</a></td>
					<td align="center" style="background-color:#deddc9"><a href="order/delivery?id=${order.order_id}">点击发货</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>