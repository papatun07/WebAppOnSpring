<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 12.05.2023
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-4">
            <form:form action="/register" method="post" modelAttribute="userForm">
                <div class="mb-3">
                    <input type="text" name="username" class="form-control" placeholder="Username">
                    <form:errors path="username"/>
                </div>
                <div class="mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Password">
                    <form:errors path="password"/>
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
