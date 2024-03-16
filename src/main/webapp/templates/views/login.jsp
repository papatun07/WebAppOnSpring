<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 21.05.2023
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<jsp:include page="navbar.jsp"/>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-4">
            <form:form action="/login" method="post" modelAttribute="userForm">
                <div class="mb-3">
                    <input name="username" type="text" class="form-control" placeholder="Username"/>
                    <form:errors path="username" cssClass="text-danger"></form:errors>
                </div>
                <div class="mb-3">
                    <input name="password" type="password" class="form-control" placeholder="Password"/>
                    <form:errors path="password" cssClass="text-danger"></form:errors>
                </div>
                <button type="submit" class="btn btn-primary">Log In</button>
                <br/>
                <a href="/register">Зарегистрироваться</a>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>