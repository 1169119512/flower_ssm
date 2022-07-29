<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>结算页面</title>
	<%-- 静态包含base标签，css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<link href="css/banner-style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	#wel_main h1{
		text-align: center !important;
		padding-top:200px;
		height:25px;
		font-size:25px;
		color: #cf6484;
	}

	#wel_main{
		text-align:center;
		width:1100px;
		margin-left:auto;
		margin-right:auto;
		min-height:500px;
		font-size:25px;
	}
	</style>
</head>
<body>
	<%@ include file="/pages/common/body_menu.jsp"%>
	<div id="wel_main">
		<h1>你的订单已结算，订单号为:${sessionScope.orderId}</h1>
		
	
	</div>
	
	<%@include file="/pages/common/footer.jsp"%>
</body>
</html>