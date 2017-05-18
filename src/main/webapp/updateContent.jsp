<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/4/11
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>发布公告</title>
    <link href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/login-2.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<body class=" login">
<%--<%
    if (session.getAttribute("user") == null){
%>
<a href="${pageContext.request.contextPath}/login.jsp" style="display: none">
    <li id="returnLogin">自动跳转</li>
</a>
<%
    }
%>--%>
<div class="logo">
</div>
<div class="">
    <form class="" style="width:1024px; margin: auto" method="post">
        <div class="form-title">
            <span class="form-title">更新内容</span>
        </div>
        <div id="hint" class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
            <%--<span> 用户名或密码错误 </span>--%>
        </div>
        <div class="form-group">
            <input type="hidden" id="hidInput" value="${sessionScope.user}">
            <input type="hidden" id="hidContentId" value="${requestScope.content.id}">
            <input id="title" class="form-control" type="text" autocomplete="off" placeholder="标题" name="title" value="${requestScope.content.title}"/> </div>
        <div class="form-group">
            <input id="hidInfo" type="hidden" value="${requestScope.content.info}">
            <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script> </div>
        <div class="form-group">
            <button id="subBtn" type="button" class="btn green ">更新</button>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/ueditor/ueditor.config.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js" type="text/javascript"> </script>
<script src="${pageContext.request.contextPath}/js/content/updateContent.js" type="text/javascript"></script>
</body>
</html>