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
    <spring:url value="/resources/css/style.css" var="style"/>
    <link href="${style}" rel="stylesheet" />

</head>

<body>

<div class="container container-add">
    <h2>Добавление статьи</h2>
    <br/>
    <form:form method="post" action="/add" modelAttribute="article">
        <div class="form-group">
            <label for="articleTitle">Заголовок</label>
            <form:input type="text" required="required" path="title" class="form-control" id="articleTitle" placeholder="Заголовок статьи"/>
        </div>
        <div class="form-group">
            <label for="articleDesc">Описание</label>
            <form:textarea class="form-control" required="required" path="desc" rows="7" id="articleDesc" placeholder="Описание статьи"></form:textarea>
        </div>

        <label for="loadImgButton">Прикрепить изображение</label>
        <div class="row">
            <div class="col-md-2">
                <a id="loadImgButton" class="btn btn-default btn-block" href="#"><img class="addImage" src="/resources/images/load_img.png"></a>
            </div>
            <div class="col-md-3 pull-right">
                <button type="submit" class="btn btn-primary btn-block">Добавить</button>
            </div>
            <div class="col-md-3 pull-right">
                <a class="btn btn-default btn-block" href="/">Отмена</a>
            </div>
        </div>
    </form:form>
</div>
</body>
</html>
