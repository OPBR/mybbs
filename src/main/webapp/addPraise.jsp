<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/4/15
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
</a>
<a href="${pageContext.request.contextPath}/praise/addPraise/${sessionScope.user}/${movie.id}">
    <button type="submit" class="btn btn-warning">
        <span class="glyphicon glyphicon-thumbs-up"></span>${movie.count}
    </button>
</body>
</html>
