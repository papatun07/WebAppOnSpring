<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 27.05.2023
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div style="text-align: center">
<h2>Film: ${film.name}</h2><br/>
<h2>Description: ${film.description}</h2><br/>
</div>
<hr>
Reviews:
<c:forEach items="${film.reviews}" var="review">
    [${review.createdAt}]: <br> User ${pageContext.request.userPrincipal.name}: ${review.description} <hr>
</c:forEach>
    <form method="post" action="/add-review/${film.id}">
        <p>Написать отзыв</p>
        <textarea name="text"></textarea>
        <input type="submit" value="Сохранить!"/>

    </form>
</body>
</html>
