<%--
  Created by IntelliJ IDEA.
  User: Jenya
  Date: 15.04.2018
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Автризация</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>

<form>
    <c:url value="/j_spring_security_check" var="loginUrl" />

   <center><h1>Пожалуйста авторизируйтесь</h1></center>
    <div align="center"><div class="input-group">
        <div class="col-xs-10">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="email" type="text" class="form-control" name="j_username" placeholder="Login">
        </div>
        </div>
        <div class="input-group">
            <div class="col-xs-10">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input id="password" type="password" class="form-control" name="j_password" placeholder="Password">
                <div><button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button></div>
        </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <center><c:if test="${param.error ne null}">
        <p>Wrong login or password!</p>
    </c:if></center>
</form>
</body>
</html>
