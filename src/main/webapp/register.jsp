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
    <title>找回密码</title>
    <link href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/login-2.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<body class=" login">
<div class="logo">
</div>
<div class="content">
    <form id="registerForm" class="login-form" method="post">
        <div class="form-title">
            <span class="form-title">注册用户</span>
            <span class="form-subtitle">请输入信息</span>
        </div>
        <div id="hint" class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
            <%--<span> 输入的信息有错 </span>--%>
        </div>
        <div class="form-group input-group">
            <input id="username" style="background-color: #6c7a88;border-right-color: #6c7a88" class="form-control" type="text" autocomplete="off" placeholder="用户名" name="username" />
            <span class="input-group-addon" style="background-color: #9fb1b9; border-color: #9fb1b9 #9fb1b9 #9fb1b9 #6c7a88">账号</span>
        </div>
        <div class="form-group input-group">
            <input id="realname" style="background-color: #6c7a88;border-right-color: #6c7a88" class="form-control" type="text" autocomplete="off" placeholder="真实姓名" name="realname" />
            <span class="input-group-addon" style="background-color: #9fb1b9; border-color: #9fb1b9 #9fb1b9 #9fb1b9 #6c7a88">姓名</span>
        </div>
        <div class="form-group input-group">
            <input id="realid" style="background-color: #6c7a88;border-right-color: #6c7a88" class="form-control" type="text" autocomplete="off" placeholder="身份证号" name="realid" />
            <span class="input-group-addon" style="background-color: #9fb1b9; border-color: #9fb1b9 #9fb1b9 #9fb1b9 #6c7a88">证件</span>
        </div>
        <div class="form-group input-group">
            <input id="phone" style="background-color: #6c7a88;border-right-color: #6c7a88" class="form-control" type="text" autocomplete="off" placeholder="手机号" name="phone" />
            <span class="input-group-addon" style="background-color: #9fb1b9; border-color: #9fb1b9 #9fb1b9 #9fb1b9 #6c7a88">手机</span>
        </div>
        <div class="form-group input-group">
            <input id="password" style="background-color: #6c7a88;border-right-color: #6c7a88" class="form-control" type="password" autocomplete="off" placeholder="密码" name="password" />
            <span class="input-group-addon" style="background-color: #9fb1b9; border-color: #9fb1b9 #9fb1b9 #9fb1b9 #6c7a88">密码</span>
        </div>
        <div class="form-group">
            <button id="subBtn" type="button" class="btn green">确认</button>
            <button type="reset" class="btn red pull-right">重置</button>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/register/index.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js" type="text/javascript"></script>
</body>
</html>
