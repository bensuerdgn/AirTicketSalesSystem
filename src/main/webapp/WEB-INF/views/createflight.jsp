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
            <div class="d-flex">
                <a class="btn  btn-outline-light me-3"><i
                        class="far fa-user me-2"></i> ${admin.username}</a>
                <a href="/admin/logout" class="btn btn-warning"><i class="fas fa-sign-out-alt me-2"></i>Çıkış Yap</a>

            </div>
        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content">
        <div class="container pt-5 d-flex flex-column justify-content-center align-items-center">
            <h2 class="text-white mb-3">Yeni Uçuş Kaydı</h2>

            <form action="/flight/createflight" method="post"
                  style="width: 50%; padding: 20px; background: #21252980;border-radius: 0.5rem">
                <select required class="form-select" aria-label="Nereden" name="fromLocation">
                    <option selected>Nereden</option>
                    <option value="sivas">Sivas</option>
                    <option value="ankara">Ankara</option>
                    <option value="istanbul">İstanbul</option>
                    <option value="izmir">İzmir</option>
                    <option value="antalya">Antalya</option>
                </select>

                <select required class="form-select mt-2" aria-label="Nereye" name="toFrom">
                    <option selected>Nereden</option>
                    <option value="sivas">Sivas</option>
                    <option value="ankara">Ankara</option>
                    <option value="istanbul">İstanbul</option>
                    <option value="izmir">İzmir</option>
                    <option value="antalya">Antalya</option>
                </select>

                <input required class="form-control mt-2" type="date" name="date"/>
                <input required class="form-control mt-2" placeholder="Fiyat" type="number" name="price"/>

                <button type="submit" class="btn btn-primary mt-2"><i class="far fa-save me-2"></i>Kaydet</button>

                <%
                    String status = request.getParameter("status");
                    if (status != null && status.equals("success")) {
                %>
                <p class="text-white">Uçuş kaydı başarılı !</p>

                <% } %>
            </form>
        </div>
    </div>

</section>
<footer class="p-4 bg-dark text-white text-center top fixed-bottom">Copyright © 2021 tüm hakları saklıdır</footer>
</body>
</html>