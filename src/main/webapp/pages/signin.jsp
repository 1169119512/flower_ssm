<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>登录</title>
    <%--    包含了动态路径basePath标签值--%>
    <%@include file="/pages/common/head.jsp"%>
    <link rel="stylesheet" type="text/css"  href="css/signin.css">
    <link rel="shortcut icon" href="img/favicon.ico">
</head>
<body>
<section>

    <!-- 登录 -->
    <div class="container" id="myDIV">
        <div class="user singinBx">
            <div class="imgBx"><img src="images/img/2.jpg" alt=""></div>
            <div class="formBx">
                <form action="user/login" method="post">
                    <input type="hidden" name="action" value="login">
                    <h2>登录</h2>
                    <input class="itxt" type="text" placeholder="用户名"
                           name="username" value="${requestScope.username}"/>
                    <input class="itxt" type="password" placeholder="密码" name="password"/>
                    <input type="submit" value="登录" id="sub_btn1" />
                    <span class="" style="color: red">${requestScope.msg1}</span>
                    <p class="signup">没有账号？<a class="topggleForm" href="pages/signout.jsp">注册</a></p>
                </form>
            </div>
        </div>

        <!-- 注册 -->
        <div class="user singupBx">
            <div class="formBx">
                <form action="user/regist" method="post">
                    <input type="hidden" name="action" value="regist">
                    <h2>注册</h2>
                    <input class="itxt" type="text" placeholder="用户名"
                           name="username" id="username" value="${requestScope.username}"/>
                    <input class="itxt" type="password" placeholder="密码" name="password" id="password"/>
                    <input class="itxt" type="password" placeholder="确认密码"
                           name="repwd" id="repwd" />
                    <input class="itxt" type="text" placeholder="邮箱地址"
                           name="email" id="email" value="${requestScope.email}"/>
                    <input class="itxt" type="text" placeholder="验证码" style="width: 80px;" name="code" id="code"/>
                    <img alt="" id="code_img" src="kaptcha.jpg" style="float: right; margin-right: 40px; width: 100px; height: 36px;" >
                    <input type="submit" value="注册" id="sub_btn2" />
                    <span style="color: red">${requestScope.msg2}</span>
                    <p class="signup">已有账号？<a class="topggleForm" href="pages/signin.jsp#">登录</a></p>
            </div>
            <div class="imgBx"><img src="images/img/3.jpg" alt=""></div>
        </div>

    </div>
</section>
<script type="text/javascript">


    $(function () {
        $("a.topggleForm").click(function () {
            var container = document.querySelector('.container');
            container.classList.toggle('active');
        })
            $("#code_img").click(function () {
                this.src="${basePath}kaptcha.jpg?d="+new Date();
            })
    })

</script>
</body>
</html>
