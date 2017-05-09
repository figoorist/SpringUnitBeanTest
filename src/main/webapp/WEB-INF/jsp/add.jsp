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
<jsp:include page="header.jsp"/>

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
            <div class="col-md-2 pull-right">
                <a class="btn btn-default btn-block" href="/">Отмена</a>
            </div>
            <div class="col-md-2 pull-right">
                <button type="submit" class="btn btn-primary btn-block">Добавить</button>
            </div>

        </div>
    </form:form>
    </div>
</div>
<br/>
<br/><br/>
<jsp:include page="footer.jsp"/>
</body>
</html>
