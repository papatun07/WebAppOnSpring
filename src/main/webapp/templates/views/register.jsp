
<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 12.05.2023
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<form:form action="register" method="post" modelAttribute="userForm">
        <input type="text" name="username" placeholder="Username">
        <form:errors path="username"/>
    <br/>
        <input type="password" name="password" placeholder="Password">
        <form:errors path="password"/>
    <br/>
    <input type="submit" value="register">
</form:form>
</body>
</html>
