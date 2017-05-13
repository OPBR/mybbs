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
    <!--  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin Theme #1 for " name="description" />
    <meta content="" name="author" /> -->
    <!--   <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="css/simple-line-icons.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- <link href="css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="css/select2.min.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="${pageContext.request.contextPath}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <!-- <link href="css/plugins.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="${pageContext.request.contextPath}/css/login-2.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <%--<link rel="shortcut icon" href="test.png" /> </head>--%>
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
            <span> 用户名或密码错误 </span>
        </div>
        <div class="form-group">
            <%--<label class="control-label visible-ie8 visible-ie9">用户名</label>--%>
            <input id="username" style="background-color: #6c7a88" class="form-control" type="text" autocomplete="off" placeholder="用户名" name="username" /> </div>
        <div class="form-group">
            <%--<label class="control-label visible-ie8 visible-ie9">密码</label>--%>
            <input id="password" maxlength="32" style="background-color: #6c7a88" class="form-control" type="password" autocomplete="off" placeholder="密码" name="password" /> </div>
        <div class="form-group">
            <button id="subBtn" type="button" class="btn green btn-block">登录</button>
        </div>
        <div class="form-actions">
            <div class="pull-left">
                <label class="rememberme mt-checkbox mt-checkbox-outline">
                    <input type="checkbox" name="remember" value="1" /> 记住密码
                    <span></span>
                </label>
            </div>
            <div class="pull-right forget-password-block">
                <a href="javascript:;" id="forget-password" class="forget-password">忘记密码?</a>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.md5.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/login/index.js" type="text/javascript"></script>
</body>
</html>
<%--<html>
<head>
    <title>登陆页面</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    &lt;%&ndash;由于Bootstrap要基于jQuery完成，所以需要先导入jQuery的开发包&ndash;%&gt;
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.md5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lo.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div class="container">
    &lt;%&ndash;由于本次编写需要基于表单，同时需要考虑到数据验证的问题，那么就可以不写row样式&ndash;%&gt;
    <form id="loginFrom" class="form-horizontal">
        <fieldset>
            <div class="mycenter">
                <div class="mysign">
            <legend>
                <label>
                    <span class="glyphicon glyphicon-user"></span>
                    &nbsp;用户登录
                </label>
            </legend>
            &lt;%&ndash;描述mid输入信息的内容&ndash;%&gt;
            <div class="form-group" id="midDiv">
                <label class="col-md-3 control-label" for="mid">用户名</label>
                <div class="col-md-5">
                    &lt;%&ndash;id是为javascript服务的，而name是为了JSP的接收数据服务的&ndash;%&gt;
                    <input type="text" id="mid" name="username" class="form-control" placeholder="请输入登录名">
                </div>
                <div class="col-md-4" id="midSpan"></div>
            </div>
            <div class="form-group" id="passwordDiv">
                <label class="col-md-3 control-label" for="mid">密   码</label>
                <div class="col-md-5">
                    &lt;%&ndash;id是为javascript服务的，而name是为了JSP的接收数据服务的&ndash;%&gt;
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入登录密码">
                </div>
                <div class="col-md-4" id="passwordSpan"></div>
            </div>
            <div class="form-group" id="butDiv">
                <div class="col-md-5 col-md-offset-3">
                    <div class="pull-left">
                        <button type="button" id="subBut" class="btn btn-xs btn-primary">登录</button>
                    </div>
                    <a href="${pageContext.request.contextPath}/findPass.jsp" class="control-label">忘记密码</a>
                </div>
            </div>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>--%>
