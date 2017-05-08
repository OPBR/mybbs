<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/4/11
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>首页</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    <%--由于Bootstrap要基于jQuery完成，所以需要先导入jQuery的开发包--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lo.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
<body>
<%
    if (session.getAttribute("user") != null){
%>
<h3>hello ${sessionScope.user}</h3>
<a href="${pageContext.request.contextPath}/addContent.jsp" class="btn btn-xs btn-primary">发帖</a>
<a href="${pageContext.request.contextPath}/user/my/${sessionScope.user}" class="btn btn-xs btn-primary">我的</a>
<a href="${pageContext.request.contextPath}/logout.jsp" class="btn btn-xs btn-warning">退出</a>
<%
} else {
%>
<a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-xs btn-primary">登录</a>
<a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-xs btn-warning">注册</a>
<%
    }
%>
<a href="${pageContext.request.contextPath}/praise/sort" class="btn btn-xs btn-warning">按赞排序</a>
<a href="${pageContext.request.contextPath}/user/index" class="btn btn-xs btn-warning">默认排序</a>
<table class="table">
    <caption>基本的表格布局</caption>
    <thead>
    <tr>
        <th>标题</th>
        <th>用户</th>
        <th>时间</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="movie" items="${requestScope.contentList}">
        <tr>
            <td>${movie.title}</td>
            <a href="#">
                <td>${movie.user.username}</td>
            </a>
            <td>
                    ${movie.current}
            </td>
            <a href="#">
                <c:if test="${sessionScope.user eq movie.user.username}">
                    <c:if test="${empty sessionScope.user}">
                        <td>
                            <form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-info">查看</button>
                            </form>
                        </td>
                    </c:if>
                    <c:if test="${not empty sessionScope.user}">
                        <td colspan="3">
                            <form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">
                                <button type="submit" id="subBut" class="btn btn-xs btn-info">查看</button>
                            </form>
                            <form action="${pageContext.request.contextPath}/content/updateContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-primary">更新</button>
                            </form>
                            <form action="${pageContext.request.contextPath}/content/deleteContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-danger">删除</button>
                            </form>
                            <%--<form action="${pageContext.request.contextPath}/praise/addPraise/${sessionScope.user}/${movie.id}" method="get">--%>
                                <%--<button type="submit" class="btn btn-xs btn-danger">点赞${movie.count}</button>--%>
                            <%--<jsp:include page="addPraise.jsp" flush="true"></jsp:include>--%>
                            <a href="${pageContext.request.contextPath}/praise/addPraise/${sessionScope.user}/${movie.id}">
                                <button type="submit" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-thumbs-up"></span>${movie.count}
                                </button>
                            </a>
                            <%--</form>--%>
                        </td>
                    </c:if>
                </c:if>
                <c:if test="${!(sessionScope.user eq movie.user.username)}">
                    <c:if test="${not empty sessionScope.user }">
                        <td>
                            <form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-info">查看</button>
                            </form>
                            <%--<form action="${pageContext.request.contextPath}/praise/addPraise/${sessionScope.user}/${movie.id}" method="get">--%>
                                <%--<button type="submit" class="btn btn-xs btn-danger">点赞</button>--%>
                            <%--<jsp:include page="addPraise.jsp" flush="true"></jsp:include>--%>
                            <a href="${pageContext.request.contextPath}/praise/addPraise/${sessionScope.user}/${movie.id}">
                                <button type="submit" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-thumbs-up"></span>${movie.count}
                                </button>
                            </a>
                            <%--</form>--%>
                                <%--<a href="${pageContext.request.contextPath}/content/findContent/${movie.id}">查看</a>--%>
                        </td>
                    </c:if>
                    <c:if test="${empty sessionScope.user }">
                        <td>
                            <form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-info">查看</button>
                            </form>
                        </td>
                    </c:if>
                </c:if>
            </a>

        </tr>
    </c:forEach>
    </tbody>
</table>
<%--<table>--%>
    <%--<c:forEach var="movie" items="${requestScope.contentList}">--%>
        <%--<tr>--%>
            <%--<td>${movie.title}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
</body>
</html>
