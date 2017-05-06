<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">SpringUnitBeanTest</a>
        </div>
    </div>
</nav>

<div class="container">
    <a class="btn btn-primary pull-right marginBottom10" href="/add">Добавить статью</a>
    <c:forEach var="article" items = "${articles}">
    <div class="col-md-9 blogShort">
        <h1>${article.title}</h1>
        <img src="/resources/images/pic.png" class="pull-left img-responsive thumb margin10 img-thumbnail">
        <article>
            <p>
            ${article.desc}
            </p>
        </article>
        <a class="btn btn-info pull-right marginBottom10" href="http://bootsnipp.com/user/snippets/2RoQ">READ MORE</a>
    </div>
    </c:forEach>
</div>

<footer class="panel-footer">

</footer>
</body>
</html>

