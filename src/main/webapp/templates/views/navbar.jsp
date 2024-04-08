<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 28.05.2023
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/filmlist" class="nav-link px-2 text-white" >Фильмы</a></li>
            </ul>
            <div class="text-end" style="display: flex">
                <sec:authorize access="isAuthenticated()">
                    <li><a href="/logout" class="nav-link px-2 text-white">Выйти</a></li>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <li><a href="/login" class="nav-link px-2 text-white">Войти</a></li>
                    </form>
                    <li><a href="/register" class="nav-link px-2 text-white">Зарегистрироваться</a></li>
                </sec:authorize>
            </div>
        </div>
    </div>
</header>
</body>
</html>
