<%--
  Created by IntelliJ IDEA.
  User: papatun
  Date: 27.05.2023
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-5">
                <div class="card-body">
                    <h2 class="card-title text-center">Film: ${film.name}</h2><br/>
                    <img class="card-img-top mx-auto d-block" src="${film.imagePath}" alt="image" style="max-width: 300px; max-height: 300px;">
                    <h2 class="card-text text-center">Description: ${film.description}</h2><br/>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h3 class="text-center">Reviews:</h3>
            <hr>
            <c:forEach items="${film.reviews}" var="review">
                <div class="card mb-3">
                    <div class="card-header">
                        [${review.createdAt}]: User ${pageContext.request.userPrincipal.name}
                    </div>
                    <div class="card-body">
                        <p class="card-text"><c:out value="${fn:escapeXml(review.description)}"></c:out></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div id="f_id" hidden> ${film_id} </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form id="myForm" class="mt-5">
            <h3 class="text-center">Write a review</h3>
            <div id="error" class="error text-danger"></div>
            <div class="form-group">
                <textarea name="review" id="review" class="form-control" rows="5"></textarea>
            </div>
            <button type="submit" id="save" class="btn btn-primary btn-block">Save</button>
</form:form>
<div id="info"></div>
<script>
    $(document).ready(function () {
        $("#myForm").submit(function (event) {
            event.preventDefault();

            doAjaxPost();
        });

    });

    function getFilmId() {
        var filmIdElement = document.getElementById("f_id");
        if (filmIdElement) {
            var filmId = parseInt(filmIdElement.textContent.trim());
            return filmId;
        }
        return "";
    }

    function doAjaxPost() {
        // get the form values
        var rev = {}
        rev["review"] = $("#review").val();
        var filmId = getFilmId();
        var url = "/add-review/" + filmId

        $.ajax({
            url: url,
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(rev),
            dataType: "json",
            cache: true,
            timeout: 60000,
            success: function (response) {
                if (response.status === "SUCCESS") {
                    alert("Review saved successfully!")
                }
            },
            error: function (e) {
                $("#error").text("Review field cannot be empty!");
            }
        });
    }
</script>
</body>
</html>