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
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/lo.js"></script>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/index/index.js"></script>--%>
</head>
<body>
<%
    if (session.getAttribute("user") != null){
%>
<h3>hello ${sessionScope.user}</h3>
<div class="container">
    <div class="navbar-header">
        <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar" aria-controls="bs-navbar" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="../" class="navbar-brand">论坛首页</a>
    </div>
    <nav id="bs-navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="${pageContext.request.contextPath}/addContent.jsp">发帖</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/user/my/${sessionScope.user}">我的</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/logout.jsp">退出</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/praise/sort">按赞排序</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/user/index">默认排序</a>
            </li>
        </ul>
    </nav>
</div>
<%--<div class="col-md-12">
    <div class="pull-left col-md-2">
        <a href="${pageContext.request.contextPath}/addContent.jsp" class="btn btn-xs btn-primary">发帖</a>
    </div>
    <div class="pull-left col-md-2">
        <a href="${pageContext.request.contextPath}/user/my/${sessionScope.user}" class="btn btn-xs btn-primary">我的</a>
    </div>
    <div class="pull-left col-md-2">
        <a href="${pageContext.request.contextPath}/logout.jsp" class="btn btn-xs btn-warning">退出</a>
    </div>
    <div class="pull-right col-md-2">
        <a href="${pageContext.request.contextPath}/praise/sort" class="btn btn-xs btn-warning">按赞排序</a>
    </div>
    <div class="pull-right col-md-2">
        <a href="${pageContext.request.contextPath}/user/index" class="btn btn-xs btn-warning">默认排序</a>
    </div>
    <div class="pull-right col-md-2">
        <a href="#">修改密码</a>
    </div>
</div>--%>
<%--<a href="${pageContext.request.contextPath}/addContent.jsp" class="btn btn-xs btn-primary">发帖</a>
<a href="${pageContext.request.contextPath}/user/my/${sessionScope.user}" class="btn btn-xs btn-primary">我的</a>
<a href="${pageContext.request.contextPath}/logout.jsp" class="btn btn-xs btn-warning">退出</a>
<a href="${pageContext.request.contextPath}/praise/sort" class="btn btn-xs btn-warning">按赞排序</a>
<a href="${pageContext.request.contextPath}/user/index" class="btn btn-xs btn-warning">默认排序</a>--%>
<%
} else {
%>
<a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-xs btn-primary">登录</a>
<a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-xs btn-warning">注册</a>
<%
    }
%>
<table class="table">
    <caption></caption>
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
        <tr id="row${movie.id}">
            <td><font size="6" style="font-family: '微软雅黑'">${movie.title}</font></td>
            <a href="#">
                <td><font size="6" style="font-family: '微软雅黑'">${movie.user.username}</font></td>
            </a>
            <td>
                <font size="6" style="font-family: '微软雅黑'">${movie.current}</font>
            </td>
            <a href="#">
                <c:if test="${sessionScope.user eq movie.user.username}">
                    <c:if test="${empty sessionScope.user}">
                        <td>
                            <%--<form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">--%>
                                <%--<button type="button" class="btn btn-xs btn-info">查看</button>--%>
                                <a href="${pageContext.request.contextPath}/content/findContent?id=${movie.id}" class="btn btn-xs btn-info">查看</a>
                            <%--</form>--%>
                        </td>
                    </c:if>
                    <c:if test="${not empty sessionScope.user}">
                        <td colspan="3">
                            <input id="hidInput" type="hidden" value="${movie.id}">
                            <%--<form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">--%>
                            <%--<button type="button" class="btn btn-xs btn-info">查看</button>--%>
                            <a href="${pageContext.request.contextPath}/content/findContent?id=${movie.id}" class="btn btn-xs btn-info">查看</a>
                            <%--</form>--%>
                            <form action="${pageContext.request.contextPath}/content/updateContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-primary">更新</button>
                            </form>
                            <%--<form action="${pageContext.request.contextPath}/content/deleteContent/${movie.id}" method="post">--%>
                                <button id="remove${movie.id}" type="button" class="btn btn-xs btn-danger" onclick="remove('${movie.id}')">删除</button>
                            <%--</form>--%>
                            <a href="javascript:void (0)" onclick="praise('${sessionScope.user}', '${movie.id}', '1')">
                                <button class="btn btn-warning">
                                    <span id="praiseId1${movie.id}" class="glyphicon glyphicon-thumbs-up"><label id="label1${movie.id}" style="display: inline-block">${movie.count}</label></span>
                                </button>
                            </a>
                        </td>
                    </c:if>
                </c:if>
                <c:if test="${!(sessionScope.user eq movie.user.username)}">
                    <c:if test="${not empty sessionScope.user }">
                        <td>
                            <%--<form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">--%>
                                <%--<button type="button" class="btn btn-xs btn-info">查看</button>--%>
                                <a href="${pageContext.request.contextPath}/content/findContent?id=${movie.id}" class="btn btn-xs btn-info">查看</a>
                            <%--</form>--%>
                            <c:if test="${sessionScope.type == 1}">
                                <button id="remove${movie.id}" type="button" class="btn btn-xs btn-danger" onclick="remove('${movie.id}')">删除</button>
                            </c:if>
                            <a href="javascript:void (0)" onclick="praise('${sessionScope.user}', '${movie.id}', '2')">
                                <button class="btn btn-warning">
                                    <span id="praiseId2${movie.id}" class="glyphicon glyphicon-thumbs-up"><label id="label2${movie.id}" style="display: inline-block">${movie.count}</label></span>
                                </button>
                            </a>
                        </td>
                    </c:if>
                    <c:if test="${empty sessionScope.user }">
                        <td>
                            <%--<form action="${pageContext.request.contextPath}/content/findContent/${movie.id}" method="post">
                                <button type="submit" class="btn btn-xs btn-info">查看</button>
                            </form>--%>
                                <a href="${pageContext.request.contextPath}/content/findContent?id=${movie.id}" class="btn btn-xs btn-info">查看</a>
                        </td>
                    </c:if>
                </c:if>
            </a>

        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
<script type="text/javascript">
    function praise(username, id, countType) {
        $.ajax({
            url: '${pageContext.request.contextPath}/praise/addPraise',
            type: 'POST',
            data: {
                'username' : username,
                'id': id
            },
            dataType: "JSON",
            success: function(data) {
                var strategyPraiseNo = data.count;
                if ("1" === countType){
                    $('#label1' + id).css('display','none');
                    $('#praiseId1' + id).html('<label id="label1' + id + '" style="display: inline-block">' + strategyPraiseNo +'</label>');
                }
                if ("2" === countType){
                    $('#label2' + id).css('display','none');
                    $('#praiseId2' + id).html('<label id="label2' + id + '" style="display: inline-block">' + strategyPraiseNo +'</label>');
                }
            }
        });
    }
    function remove(id) {
        $("#row" + id).remove();
        <%--location.href = "${pageContext.request.contextPath}/content/deleteContent?id=" + id;--%>
        $.ajax({
            url: "${pageContext.request.contextPath}/content/deleteContent",
            type: "POST",
            data: {
                'id': id
            },
            dataType: "JSON",
            success: function () {

            }
        })
    }
</script>
</html>
