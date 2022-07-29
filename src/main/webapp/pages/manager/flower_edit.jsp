<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑图书</title>
	<%-- 静态包含base标签，css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
	<link href="css/banner-style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin.css" rel="stylesheet"  type="text/css" />
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="js/index.js"></script>

</head>

<%@include file="/pages/common/body_menu.jsp"%>

<div id="box-border">
	<div class="pull-left">
		<div class=hd><b></b><span>&nbsp;&nbsp;&nbsp;后台管理</span></div>
		<ul class="bd">
			<li>
				<a href="flower/page"><b></b><i class="fa fa-refresh"></i>查看商品</a>
			</li>
			<li style="left: -10px;position: relative;background: pink;border-radius: 25px;">
				<a href="pages/manager/flower_edit.jsp"><b></b><i class="fa fa-plus-square"></i>修改商品</a>
			</li>
			<li>
				<a href="order/watchOrders?url=/pages/manager/order_manager.jsp"><b></b><i class="fa fa-github-alt"></i>订单处理</a>
			</li>
		</ul>
	</div>
	<div class="pull-right">
		<form action="flower/${empty param.id ? "add":"update"}?id=${requestScope.flower.id}"
			  method="post" enctype="multipart/form-data">
			<table width="890px" border="1" align="center" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC" style="border-bottom:#F0F0F0">
				<tr bgcolor="77aa33" >
					<td height="35" colspan="3" align="center" bgcolor="#F0F0F0"><span class="STYLE5">输入添加商品的数据</span></td>
				</tr>
			</table>
			<table width="890px" border="1" align="center" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC">
				<tr style="background-color: #c9b5b0">
					<td align="right" height="35">花名：</td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #c9b5b0"name="flower_name" type="text"  size="30" value="${requestScope.flower.flower_name}" align="center"></td>
				</tr>

				<tr style="background-color: #d1ddeb">
					<td align="right" height="35">花种：</td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #d1ddeb"name="flower_kind" type="text" size="30" value="${requestScope.flower.flower_kind}" align="center" ></td>
				</tr>

				<tr style="background-color: #c9b5b0">
					<td align="right" height="35">花语： </td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #c9b5b0" name="flower_language" type="text" size="30" value="${requestScope.flower.flower_language}" align="center" ></td>
				</tr>
				<tr style="background-color: #d1ddeb">
					<td align="right" height="35"> 价格： </td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #d1ddeb"  name="price" type="text" size="30" value="${requestScope.flower.price}" align="center" ></td>
				</tr>
				<tr style="background-color: #c9b5b0">
					<td align="right" height="35">材料： </td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #c9b5b0" name="material" type="text" size="30" value="${requestScope.flower.material}" align="center" ></td>
				</tr>
				<tr style="background-color: #c9b5b0">
					<td align="right" height="35">星座： </td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #c9b5b0" name="star" type="text" size="30" value="${requestScope.flower.star}" align="center" ></td>
				</tr>
				<tr style="background-color: #c9b5b0">
					<td align="right" height="35">包装： </td>
					<td colspan="2" valign="middle" class="input_text">&nbsp;&nbsp;<input style="background-color: #c9b5b0" name="pack" type="text" size="30" value="${requestScope.flower.pack}" align="center" ></td>
				</tr>

				<tr style="background-color: #c6c3bc">
					<td align="right" height="60" rowspan="2">请上传图片：</td>
					<td><input type="file" name="photo1" value="photo1"></td>
					<td><input type="file" name="photo2" value="photo2"></td>
				</tr>
				<tr style="background-color: #c6c3bc">
					<td><input type="file" name="photo1" value="photo3"></td>
					<td><input type="file" name="photo2" value="photo4"></td>
				</tr>
				<tr>
					<td height="40" colspan="3" align="center"><input type="submit" name="Submit" value="&gt;&gt; 点击提交" ></td>
				</tr>
			</table>
		</form>
		<%--		静态包含分页条--%>
	</div>
</div>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>