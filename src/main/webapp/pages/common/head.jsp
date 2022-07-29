<%--
  Created by IntelliJ IDEA.
  User: 王
  Date: 2020/12/6
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()
            + "://"
            + request.getServerName()
            + ":"
            + request.getServerPort()
            + request.getContextPath()
            + "/";

    pageContext.setAttribute("basePath",basePath);
%>
<!--写base标签，永远固定相对路径跳转的结果-->
<base href="<%=basePath%>">
<script type="text/javascript" src="script/jquery-1.7.2.js"></script>
