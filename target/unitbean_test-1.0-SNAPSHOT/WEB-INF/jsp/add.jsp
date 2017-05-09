<%--
  Created by IntelliJ IDEA.
  User: Viktor
  Date: 05.05.2017
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <a class="navbar-brand" href="/">SpringUnitBeanTest</a>
        </div>
    </div>
</nav>

<div class="container">
    <h2>Добавление статьи</h2>
    <br/>
    <div class="col-md-9">
    <form:form method="post" action="/add" modelAttribute="article">
        <div class="form-group">
            <label for="articleTitle">Заголовок:</label>
            <form:input type="text" path="title" class="form-control" id="articleTitle" placeholder="Заголовок статьи"/>
        </div>
        <div class="form-group">
            <label for="articleDesc">Описание:</label>
            <form:textarea class="form-control" path="desc" rows="7" id="articleDesc" placeholder="Описание статьи"></form:textarea>
        </div>
        <div class="form-group">
            <label for="articleLink">Ссылка на статью:</label>
            <form:input type="text" path="link" class="form-control" id="articleLink" placeholder="Ссылка на статью"/>
        </div>
        <div class="row">
            <div class="col-md-1 pull-right">
                <a class="btn btn-default" href="/">Отмена</a>
            </div>
            <div class="col-md-1 pull-right">
                <button type="submit" class="btn pull-right btn-primary">Добавить</button>
            </div>

        </div>
    </form:form>
    </div>
</div>
<br/>
<br/><br/>
<footer class="footer">
    <div class="navbar navbar-inverse navbar-fixed-bottom row-fluid">
        <div class="navbar-inner">
            <div class="container">
                <p class="text-muted">&copy; Тестовое задание Spring</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
