<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>New Contact</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <form role="form" class="form-horizontal" action="/contact/add" method="post">
                        <h3>Создание клиента</h3>
                        <select class="selectpicker form-control form-group" name="group">
                            <option value="-1">Default</option>
                            <c:forEach items="${groups}" var="group">
                                <option value="${group.id}">${group.name}</option>
                            </c:forEach>
                        </select>
                        <input class="form-control form-group" type="text" name="name" placeholder="Имя клиента">
                        <input class="form-control form-group" type="text" name="surname" placeholder="Фамилия клиента">
                        <input class="form-control form-group" type="text" name="phone" placeholder="Номер телефона">
                        <input class="form-control form-group" type="text" name="email" placeholder="Электронная почта">
                        <input class="form-control form-group" type="text" name="cardId" placeholder="Номер карты">
                    <input type="submit" class="btn btn-primary" value="Создать">
            </form>
        </div>

        <script>
            $('.selectpicker').selectpicker();
        </script>
    </body>
</html>