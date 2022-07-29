<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
	<%-- 静态包含base标签，css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
	<link href="css/index.css" rel="stylesheet"  type="text/css"/>
	<link href="css/aos.css" rel="stylesheet" type="text/css" />

	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="js/index.js"></script>

	<link href="css/banner-style.css" rel="stylesheet" type="text/css" />
	<link href="css/cart.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		$(function () {
			$("a.deleteItem").click(function () {
				return confirm("你确定要删除【"+document.getElementById("cartName").textContent+"】吗")
			})
			$("a.clearCart").click(function () {
				return confirm("你确定要清空购物车吗?");
			})
			$(".updateCount").change(function () {
				var cartName = document.getElementById("cartName").textContent;
				var count = this.value;
				var flowerId = $(this).attr('flowerId');
				if(confirm("你确定要将【"+cartName+"】修改数量为"+count+"吗？")){
					location.href = "<%=basePath%>cartServlet?action=updateCount&count="+count+"&id="+flowerId;
				}
				else {
					this.value = this.defaultValue;
				}

			})

			$("button.sub").click(function () {
				var find = document.getElementById("Count");
				var count = find.value;
				var flowerId = $(this).attr('flowerId');
				if((count-0)>1) {
					count = (count - 0) - 1;
				}
				var flowerId = $(find).attr('flowerId');
					location.href = "<%=basePath%>cart/updateCount?count="+count+"&id="+flowerId;
			})

			$("button.add").click(function () {
				var find = document.getElementById("Count");
				var count = find.value;
				count = (count - 0 ) + 1;
				var flowerId = $(find).attr('flowerId');
				location.href = "<%=basePath%>cart/updateCount?count="+count+"&id="+flowerId;
			})


		})


	</script>

</head>
<body>
	<%@ include file="/pages/common/body_menu.jsp"%>

	<div id="main">
	
		<table>
			<tr class="head">
				<td>商品名称</td>
				<td>数量</td>
				<td>单价</td>
				<td>金额</td>
				<td>操作</td>
			</tr>

			<c:if test="${not empty sessionScope.cart.items}">
				<c:forEach items="${sessionScope.cart.items}" var="entry">
					<tr>
						<td>
							<div style="display:inline-block"><img src="${entry.value.img_path}/1.jpg"></div>
							<div style="display:inline-block" id="cartName">${entry.value.name}</div></div>
						</td>
						<td><button class="sub">-</button>
							<input id="Count" class="updateCount" flowerId="${entry.value.id}" style="width: 50px;" type="text" value="${entry.value.count}">
							<button class="add">+</button>
						</td>
						<td>${entry.value.price}</td>
						<td>${entry.value.totalPrice}</td>
						<td><a class="deleteItem" href="cartServlet?action=deleteItem&id=${entry.value.id}">删除</a></td>
					</tr>
				</c:forEach>
			</c:if>


			<c:if test="${empty sessionScope.cart.items}">
<%--				<td colspan="5" style="text-align:center"><a href="index.jsp"><b>当前的购物车空空如也！快去和小伙伴浏览商品吧！</b></a></td>--%>
				<td colspan="5" style="text-align:center;"><a href="index.jsp"><img src="images/cart/none.jpg" style="width:auto !important;"/></a></td>
			</c:if>

		</table>

		<c:if test="${not empty	sessionScope.cart.items}">
		<div class="cart_info">
			<span class="cart_span">购物车中共有<span class="b_count">${sessionScope.cart.totalCount}</span>件商品</span>
			<span class="cart_span">总金额<span class="b_price">${sessionScope.cart.totalPrice}</span>元</span>
			<span class="cart_span_3"><a class="clearCart"  href="cart/clear">清空购物车</a></span>
			<span class="cart_span_4"><a href="order/createOrder">去结账</a></span>
		</div>
		</c:if>
	</div>
	
	<%@include file="/pages/common/footer.jsp"%>
</body>
</html>