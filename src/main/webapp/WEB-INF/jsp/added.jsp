<%--
  Created by IntelliJ IDEA.
  User: Viktor
  Date: 06.05.2017
  Time: 14:54
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
            <a class="navbar-brand" href="#">SpringUnitBeanTest</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <h2 class="">Поздравляем! Статья добавлена!</h2>
    </div>
    <br/>
    <div class="row">
        <a class="btn btn-primary" href="/">На главную</a>
    </div>
</div>
<br/>
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
