<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/3/14
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>用户登录</title>
    <link href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/login-2.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<body class=" login">
<div class="logo">
</div>
<div class="content">
    <form class="login-form" method="post">
        <div class="form-title">
            <span class="form-title">学习论坛</span>
            <span class="form-subtitle">请登录</span>
        </div>
        <div id="hint" class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
            <%--<span> 用户名或密码错误 </span>--%>
        </div>
        <div class="form-group">
            <input id="username" style="background-color: #6c7a88" class="form-control" type="text" autocomplete="off" placeholder="用户名" name="username" /> </div>
        <div class="form-group">
            <input id="password" maxlength="32" style="background-color: #6c7a88" class="form-control" type="password" autocomplete="off" placeholder="密码" name="password" /> </div>
        <div class="form-group">
            <button id="subBtn" type="button" class="btn green btn-block">登录</button>
        </div>
        <div class="form-actions">
            <div class="pull-left">
                <label class="rememberme mt-checkbox mt-checkbox-outline">
                    <input id="ck_rmbUser" type="checkbox" name="remember" value="1" /> 记住密码
                    <span></span>
                </label>
            </div>
            <div class="pull-right forget-password-block">
                <a href="${pageContext.request.contextPath}/findPass.jsp" id="forget-password" class="forget-password">忘记密码?</a>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.md5.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/login/index.js" type="text/javascript"></script>
</body>
</html>
