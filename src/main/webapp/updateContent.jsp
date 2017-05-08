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
    <title>更新内容</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/content/updateSubmit/${requestScope.content.id}" method="post">
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
                <input type="text" name="title" value="${requestScope.content.title}">
            </td>
            <td>
                <%--<textarea name="info" cols="30" rows="10">--%>
                    <%--${requestScope.content.info}--%>
                <%--</textarea>--%>
                <input type="text" name="info" value="${requestScope.content.info}">
            </td>
        </tr>
        </tbody>
    </table>
    <button type="submit" class="btn btn-xs btn-primary">提交</button>
</form>
</body>
</html>
