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
    <spring:url value="/resources/css/style.css" var="style"/>
    <link href="${style}" rel="stylesheet" />

</head>

<body>
<div class="container container-add container-added">
    <div class="row">
        <div class="col-md-offset-4 col-md-4">
        <a href="/"><img class="addImage" src="/resources/images/logo2.png"></a>
        </div>
    </div>
    <div class="row congrats">
        <a href="/"><h3>Поздравляем Вас с успешным добавлением статьи в блог UnitBean!</h3></a>
    </div>
</div>
</body>
</html>
