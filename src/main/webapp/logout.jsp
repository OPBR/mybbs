<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2017/4/11
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("user");  //清空Session变量
    response.sendRedirect("user/index");
%>
