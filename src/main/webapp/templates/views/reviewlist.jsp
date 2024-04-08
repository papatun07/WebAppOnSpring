<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 28.05.2023
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
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
<h2>Список отзывов:</h2>
<c:forEach items="${reviewForCheck}" var="reviews">
    ${reviews.description}
    <form action="${pageContext.request.contextPath}/admin" method="post">
        <input type="hidden" name="reviewId" value="${reviews.id}">
        <input type="hidden" name="action" value="delete">
        <button type="submit">Delete</button>
    </form>
</c:forEach>
</body>
</html>