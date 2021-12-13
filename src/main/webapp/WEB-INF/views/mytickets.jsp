<%@ page import="com.airticketsalessystem.model.User" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        <%@include file="main.css" %>
    </style>
    <script src="https://kit.fontawesome.com/8bbf8c5eb9.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

</head>
<body>
<header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-between justify-content-lg-between">
            <i class="logo fab fa-fly text-white"></i>
            <div class="text-end d-flex">
                <a href="/user/mytickets?userid=${user.id}" class="btn  btn-outline-light me-3"><i
                        class="far fa-user me-2"></i> ${user.username}</a>
                <a href="/user/logout" class="btn btn-warning"><i class="fas fa-sign-out-alt me-2"></i>Çıkış Yap</a>
            </div>
        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content">
        <div class="text-center container">
            <h1 class="title text-white">Biletlerim</h1>
        </div>
        <div class="container">
            <div>
                <div class="list-group">
                    <c:forEach items="${tickets}" var="item">
                        <li href="#" class="list-group-item mt-2 list-group-item-action text-white" aria-current="true">
                            <h4>${item.flight.fromLocation} - ${item.flight.toFrom} / ${item.flight.price} ₺
                                / ${item.flight.date}</h4>
                            <div class="text-end">
                                <a href="/ticket/reservationcancel?flightid=${item.id}&userid=${user.id}"
                                   class="btn btn-danger"><i class="far fa-trash-alt me-2"></i>İptal et</a>
                            </div>
                        </li>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

</section>
<footer class="p-4 bg-dark text-white text-center top fixed-bottom">Copyright © 2021 tüm hakları saklıdır</footer>
</body>
</html>