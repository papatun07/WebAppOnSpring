<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 21.05.2023
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<div>
    <form:form action="/login" method="post">
        <div>
            <input name="username" type="text" placeholder="Username"/>
            <form:errors path="username"></form:errors>
            <br/>
            <input name="password" type="password" placeholder="Password"/>
            <form:errors path="password"></form:errors>
            <br/>
            <button type="submit">Log In</button>
            <br/>
            <a href="/register">Зарегистрироваться</a>
        </div>
    </form:form>
</div>
</body>
</html>