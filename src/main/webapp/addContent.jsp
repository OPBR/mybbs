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
            <span class="form-title">发布公告</span>
        </div>
        <div id="hint" class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
            <%--<span> 用户名或密码错误 </span>--%>
        </div>
        <div class="form-group">
            <input type="hidden" id="hidInput" value="${sessionScope.user}">
            <input id="title" class="form-control" type="text" autocomplete="off" placeholder="标题" name="title" /> </div>
        <div class="form-group">
            <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script> </div>
        <div class="form-group">
            <button id="subBtn" type="button" class="btn green ">发布</button>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/ueditor/ueditor.config.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js" type="text/javascript"> </script>
<script src="${pageContext.request.contextPath}/js/content/addContent.js" type="text/javascript"></script>
</body>
</html>
<%--<html>
<head>
    <title>完整demo</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    &lt;%&ndash;<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>&ndash;%&gt;
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/content/addContent.js"></script>
    <link href="${pageContext.request.contextPath}/css/login-2.min.css" rel="stylesheet" type="text/css" />
    &lt;%&ndash;<style type="text/css">
        div {
            width: 100%;
        }
    </style>&ndash;%&gt;
</head>
<body>
<div class="content">
    <form class="login-form" method="post">
        <div class="form-title">
            <h1>完整demo</h1>
        </div>
        <div class="form-group pull-right">
            <input type="text" value="test">
            <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
        </div>
    </form>
</div>--%>
<%--<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
</script>--%>
<%--</body>
</html>--%>
<%--<html>
<head>
    <title>发帖页面</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    &lt;%&ndash;由于Bootstrap要基于jQuery完成，所以需要先导入jQuery的开发包&ndash;%&gt;
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstracp/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/content/addContent.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstracp/css/bootstrap.min.css">
</head>
<body>
<%
    if (session.getAttribute("user") == null){
%>
<a href="${pageContext.request.contextPath}/login.jsp" style="display: none">
    <li id="returnLogin">自动跳转</li>
</a>
<%
    }
%>
<div class="container">
    &lt;%&ndash;由于本次编写需要基于表单，同时需要考虑到数据验证的问题，那么就可以不写row样式&ndash;%&gt;
    &lt;%&ndash;<form id="loginFrom" action="${pageContext.request.contextPath}/user/register.action" method="post" class="form-horizontal">&ndash;%&gt;
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
                    <textarea id="info"name="info" class="form-control" rows="20" placeholder="请输入文本内容"></textarea>
                    &lt;%&ndash;<input type="text" id="info" name="info" class="form-control" placeholder="请输入文本内容">&ndash;%&gt;
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
</html>--%>
