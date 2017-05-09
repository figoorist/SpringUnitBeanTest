<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="prinng" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="col-md-9">
        <div class="row">
            <a class="btn btn-primary pull-right marginBottom10" href="/add">Добавить статью</a>
        </div>
        <c:choose>
            <c:when test="${fn:length(articles) > 0}">
                <c:forEach var="article" items = "${articles}">
                    <div class="row">
                        <h1>${article.title}</h1>
                    </div>
                    <div class="row">
                        <img src="/resources/images/pic.png" class="pull-left img-responsive thumb margin10 img-thumbnail">
                    </div>
                    <div class="row">
                        <article>
                            <p>
                                ${article.desc}
                            </p>
                        </article>
                    </div>
                    <div class="row">
                        <div class="col-md-2 pull-right"><a class="btn btn-info btn-block marginBottom10" href="${article.link}">Подробнее</a></div>
                        <div class="col-md-2 pull-right"><a type="button" class="btn btn-danger btn-block triggerDelete" data-articleid="${article.id}">Удалить</a></div>
                    </div>
                    <hr/>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <br />
                <div class="row">
                    <div class="alert alert-warning" role="alert">Статей нет</div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<br/>
<br/>
<jsp:include page="footer.jsp"/>

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

