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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/content/addContent.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%--由于本次编写需要基于表单，同时需要考虑到数据验证的问题，那么就可以不写row样式--%>
    <%--<form id="loginFrom" action="${pageContext.request.contextPath}/user/register.action" method="post" class="form-horizontal">--%>
    <form id="loginFrom" class="form-horizontal">
        <fieldset>
            <legend>
                <label>
                    <span class="glyphicon glyphicon-user"></span>
                    &nbsp;发表内容
                </label>
            </legend>
            <div class="form-group" id="midDiv">
                <label class="col-md-3 control-label" for="title">标题</label>
                <div class="col-md-5">
                    <input type="hidden" id="hidInput" value="${sessionScope.user}">
                    <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题">
                </div>
                <div class="col-md-4" id="midSpan"></div>
            </div>
            <div class="form-group" id="passwordDiv">
                <label class="col-md-3 control-label" for="title">内容</label>
                <div class="col-md-5">
                    <textarea id="info"name="info" class="form-control" rows="3" placeholder="请输入文本内容"></textarea>
                    <%--<input type="text" id="info" name="info" class="form-control" placeholder="请输入文本内容">--%>
                </div>
                <div class="col-md-4" id="passwordSpan"></div>
            </div>
            <div class="form-group" id="butDiv">
                <div class="col-md-5 col-md-offset-3">
                    <button type="button" id="subBut" class="btn btn-xs btn-primary">发布</button>
                    <button type="reset" id="rstBut" class="btn btn-xs btn-warning">重置</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
