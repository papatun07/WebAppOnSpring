<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 24.05.2023
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src=""></script>
</head>
<jsp:include page="navbar.jsp"/>
<body>
    <h3 style="">Список фильмов: ${countFilms}</h3>
    <div class="films" style="">
<%--        <a href="filmlist/${Transporter.id}">${Transporter.name}</a>--%>
<%--        <a href="filmlist/${ForrestGump.id}">${ForrestGump.name}</a>--%>
<%--        <a href="filmlist/${DarkKnight.id}">${DarkKnight.name}</a>--%>
    <c:forEach items="${films}" var="element">
        <a href="/filmlist/${element.getId()}" style="text-decoration: none; color: darkred">${element.getName()}</a> <br/>
        <img src="${element.imagePath}" alt="image"> <br/>
    </c:forEach>
    </div>
</body>
</html>
