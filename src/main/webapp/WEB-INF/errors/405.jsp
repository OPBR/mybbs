<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/6/1
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>405页面</title>
    <link href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css" rel="stylesheet">
    <base target="_self">
</head>
<body >
<div class="middle-box text-center animated fadeInDown" >
    <h1>405</h1>
    <h3 > 页面未能够找到！! !</h3>
    <div >
        抱歉，页面好像去火星啦！
        <a href="${pageContext.request.contextPath}/user/index">返回首页</a>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" ></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
</body>
</html>
