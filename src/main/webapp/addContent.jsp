<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/4/11
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>发帖页面</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    <%--由于Bootstrap要基于jQuery完成，所以需要先导入jQuery的开发包--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lo.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%--由于本次编写需要基于表单，同时需要考虑到数据验证的问题，那么就可以不写row样式--%>
    <%--<form id="loginFrom" action="${pageContext.request.contextPath}/user/register.action" method="post" class="form-horizontal">--%>
    <form id="loginFrom" action="${pageContext.request.contextPath}/content/release/${sessionScope.user}" method="post" class="form-horizontal">
        <fieldset>
            <legend>
                <label>
                    <span class="glyphicon glyphicon-user"></span>
                    &nbsp;用户登录
                </label>
            </legend>
            <div class="form-group" id="midDiv">
                <label class="col-md-3 control-label" for="mid">标题</label>
                <div class="col-md-5">
                    <input type="text" id="mid" name="title" class="form-control" placeholder="请输入登录名">
                </div>
                <div class="col-md-4" id="midSpan"></div>
            </div>
            <div class="form-group" id="passwordDiv">
                <label class="col-md-3 control-label" for="mid">内容</label>
                <div class="col-md-5">
                    <input type="text" id="info" name="info" class="form-control" placeholder="请输入登录密码">
                </div>
                <div class="col-md-4" id="passwordSpan"></div>
            </div>
            <div class="form-group" id="butDiv">
                <div class="col-md-5 col-md-offset-3">
                    <button type="submit" id="subBut" class="btn btn-xs btn-primary">登录</button>
                    <button type="reset" id="rstBut" class="btn btn-xs btn-warning">重置</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
