<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/4/11
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>查看内容</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    <%--由于Bootstrap要基于jQuery完成，所以需要先导入jQuery的开发包--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lo.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
</head>
<body>
<table class="table">
    <caption>基本的表格布局</caption>
    <thead>
    <tr>
        <th>标题</th>
        <th>内容</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                ${requestScope.content.title}
            </td>
            <td>
                ${requestScope.content.info}
            </td>
        </tr>
    </tbody>
</table>
<%--<a href="${pageContext.request.contextPath}/addComment${requestScope.content}" class="btn btn-xs btn-primary">评论</a>--%>
<c:if test="${not empty sessionScope.user}">
    <form action="${pageContext.request.contextPath}/content/findContent/addComment/${requestScope.content.id}" method="post">
        <button type="submit" class="btn btn-xs btn-info">评论</button>
    </form>
</c:if>
<table class="table">
    <caption>基本的表格布局</caption>
    <thead>
    <tr>
        <th>用户</th>
        <th>内容</th>
        <th>时间</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="comment" items="${requestScope.commentList}">
        <tr>
            <td>
                ${comment.user.username}
            </td>
            <td>
                ${comment.info}
            </td>
            <td>
                    ${comment.current}
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
