<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="prinng" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Template for Bootstrap</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <link href="${bootstrap}" rel="stylesheet" />

    <spring:url value="/resources/js/jquery-2.1.4.min.js" var="jqueryJs" />
    <script src="${jqueryJs}"></script>

    <spring:url value="/resources/js/scripts.js" var="scriptsJs" />
    <script src="${scriptsJs}"></script>
    <!-- Bootstrap Core JavaScript -->
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
    <script src="${bootstrapJs}"></script>
</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">SpringUnitBeanTest</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="col-md-9">
        <a class="btn btn-primary pull-right marginBottom10" href="/add">Добавить статью</a>
    </div>
    <c:forEach var="article" items = "${articles}">
    <div class="col-md-9" id="article-${article.id}">
        <h1>${article.title}</h1>
        <img src="/resources/images/pic.png" class="pull-left img-responsive thumb margin10 img-thumbnail">
        <article>
            <p>
            ${article.desc}
            </p>
        </article>
        <div class="row">
            <div class="col-md-2 pull-right">
                <a class="btn btn-info pull-right marginBottom10" href="${article.link}">К СТАТЬЕ</a>
            </div>
            <div class="col-md-2 pull-right">
                <a type="button" class="btn btn-danger pull-right triggerDelete" data-articleid="${article.id}">Удалить</a>
            </div>
        </div>
        <hr/>
    </div>
    </c:forEach>
</div>
<br/>
<br/>
<footer class="footer">
    <div class="navbar navbar-inverse navbar-fixed-bottom row-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-12"><p class="text-muted">&copy; Тестовое задание Spring</p></div>
            </div>
        </div>
    </div>
</footer>

<!-- Модаль -->
<div class="modal fade" id="confirmDeletingModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Подтверждение удаления</h4>
            </div>
            <div class="modal-body">
                Вы действительно хотите удалить статью?
            </div>
            <form:form action="${pageContext.request.contextPath}/delete" method="post">
            <div class="deletePostParam">

            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Удалить</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Отмена</button>
            </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>

