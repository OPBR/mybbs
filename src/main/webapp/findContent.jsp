<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/4/11
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>查看帖子</title>
    <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" /> -->
    <link href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <%--<link rel="shortcut icon" href="favicon.ico" /> --%>
</head>
<body class="">
<div class="page-wrapper">
    <div class="clearfix"> </div>
    <div class="page-container">
        <div class="page-sidebar-wrapper">
            <div class="page-sidebar navbar-collapse collapse">
            </div>
        </div>
        <div class="page-content-wrapper">
            <div class="page-content">
                <h1 class="page-title" style="">
                    <small></small>
                </h1>
                <div class="">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="portlet light">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-speech"></i>
                                    <span class="caption-subject bold uppercase"> ${requestScope.content.title} </span>
                                </div>
                                <div class="actions">
                                    <c:if test="${not empty sessionScope.user}">
                                        <a id="edit" href="javascript:;" class="btn btn-circle btn-default">
                                            <i class="fa fa-pencil"></i> 评论 </a>
                                    </c:if>
                                    <a href="javascript:;" class="btn btn-circle btn-default">
                                        <i class="fa fa-plus"></i> Add </a>
                                    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"> </a>
                                    <input id="hidInputName" type="hidden" value="${sessionScope.user}">
                                    <input id="hidInputId" type="hidden" value="${requestScope.content.id}">
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="scroller" data-rail-visible="1" data-rail-color="yellow" data-handle-color="#a1b2bd">
                                    ${requestScope.content.info}
                                </div>
                                <table class="table">
                                    <caption></caption>
                                    <thead id="comment">
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
                            </div>
                        </div>
                        <div id="editShow" style="display: none">
                            <h4>评论</h4>
                            <textarea id="info"name="info" class="form-control" rows="10" placeholder="请输入评论内容"></textarea>
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="actions">
                                        <a id="save" href="javascript:;" class="btn btn-circle btn-default">
                                            <i class="fa fa-pencil"></i> 确定 </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js" type="text/javascript"></script>
<%--<script src="${pageContext.request.contextPath}/ueditor/ueditor.config.js" type="text/javascript"></script>--%>
<%--<script src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js" type="text/javascript"> </script>--%>
<script src="${pageContext.request.contextPath}/js/content/findContent.js" type="text/javascript"> </script>
</body>
</html>
