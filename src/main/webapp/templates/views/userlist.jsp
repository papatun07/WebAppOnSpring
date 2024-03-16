<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<h2>Список пользователей:</h2>
<c:forEach items="${userList}" var="users">
    ${users.username}
    <br/>
</c:forEach>
</body>
</html>