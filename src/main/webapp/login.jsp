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
    <title>登陆页面</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    <%--由于Bootstrap要基于jQuery完成，所以需要先导入jQuery的开发包--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lo.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div class="container">
    <%--由于本次编写需要基于表单，同时需要考虑到数据验证的问题，那么就可以不写row样式--%>
    <%--<form id="loginFrom" action="${pageContext.request.contextPath}/user/register.action" method="post" class="form-horizontal">--%>
    <form id="loginFrom" action="${pageContext.request.contextPath}/user/login" method="post" class="form-horizontal">
        <fieldset>
            <div class="mycenter">
                <div class="mysign">
            <legend>
                <label>
                    <span class="glyphicon glyphicon-user"></span>
                    &nbsp;用户登录
                </label>
            </legend>
            <%--描述mid输入信息的内容--%>
            <div class="form-group" id="midDiv">
                <label class="col-md-3 control-label" for="mid">用户名</label>
                <div class="col-md-5">
                    <%--id是为javascript服务的，而name是为了JSP的接收数据服务的--%>
                    <input type="text" id="mid" name="username" class="form-control" placeholder="请输入登录名">
                </div>
                <div class="col-md-4" id="midSpan"></div>
            </div>
            <%--<div class="form-group" id="phoneDiv">--%>
                <%--<label class="col-md-3 control-label" for="mid">手机号</label>--%>
                <%--<div class="col-md-5">--%>
                    <%--&lt;%&ndash;id是为javascript服务的，而name是为了JSP的接收数据服务的&ndash;%&gt;--%>
                    <%--<input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号">--%>
                <%--</div>--%>
                <%--<div class="col-md-4" id="phoneSpan"></div>--%>
            <%--</div>--%>
            <div class="form-group" id="passwordDiv">
                <label class="col-md-3 control-label" for="mid">密   码</label>
                <div class="col-md-5">
                    <%--id是为javascript服务的，而name是为了JSP的接收数据服务的--%>
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入登录密码">
                </div>
                <div class="col-md-4" id="passwordSpan"></div>
            </div>
            <%--<div class="form-group" id="dateDiv">--%>
                <%--<label class="col-md-3 control-label" for="mid">日期</label>--%>
                <%--<div class="col-md-5">--%>
                    <%--&lt;%&ndash;id是为javascript服务的，而name是为了JSP的接收数据服务的&ndash;%&gt;--%>
                    <%--<input type="date" id="date" name="date" class="form-control">--%>
                <%--</div>--%>
                <%--<div class="col-md-4" id="dateSpan"></div>--%>
            <%--</div>--%>
            <div class="form-group" id="butDiv">
                <div class="col-md-5 col-md-offset-3">
                    <div class="pull-left">
                        <button type="submit" id="subBut" class="btn btn-xs btn-primary">登录</button>
                    </div>
                   <%-- <button type="reset" id="rstBut" class="btn btn-xs btn-warning">重置</button>--%>
                    <a href="${pageContext.request.contextPath}/findPass.jsp" class="control-label">忘记密码</a>
                </div>
            </div>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
