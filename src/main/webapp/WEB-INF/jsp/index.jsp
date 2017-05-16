<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="prinng" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <spring:url value="/resources/css/style.css" var="style"/>
    <link href="${style}" rel="stylesheet" />

    <spring:url value="/resources/js/jquery-2.1.4.min.js" var="jqueryJs" />
    <script src="${jqueryJs}"></script>

    <spring:url value="/resources/js/scripts.js" var="scriptsJs" />
    <script src="${scriptsJs}"></script>
    <!-- Bootstrap Core JavaScript -->
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
    <script src="${bootstrapJs}"></script>
</head>

<body>

<section class="publicaciones-blog-home">
    <div class="container container-all">
        <div class="row">
            <div class="col-md-5">
                <a href="/"><img class="addImage" src="/resources/images/logo.png" width="100%"></a>
                <h4>Статьи, ${fn:length(articles)}</h4>
            </div>
            <div class="col-md-2 pull-right">
                <a href="/add"><img class="addImage" src="/resources/images/add_article.png"></a>
            </div>
        </div>
        <br/>
        <div class="row-page row">
            <c:if test="${fn:length(articles) == 0}">
                <div class="alert alert-warning" role="alert">Статей нет</div>
            </c:if>
            <c:forEach var="article" items = "${articles}">
                <div class="col-page col-sm-6 col-md-6">
                    <a class="triggerDelete" data-articleid="${article.id}">
                        <img class="addImage" style="margin-bottom: 5px;" width="20" src="/resources/images/delete.png">
                    </a>
                    <a href=""  class="fondo-publicacion-home">
                        <div class="img-publicacion-home">
                            <img class="img-responsive" src="/resources/pictures/${article.image}">
                        </div>
                        <div class="contenido-publicacion-home">
                            <h3>${article.title}</h3>
                            <h6><fmt:formatDate value="${article.createdAt}" pattern="dd MMM, yyyy" /></h6>
                            <hr/>
                            <article>
                                <p>${article.desc}</p>
                            </article>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

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
                <button class="btn btn-default" data-dismiss="modal">Отмена</button>
            </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>

