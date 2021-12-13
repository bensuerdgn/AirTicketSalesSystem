<%@ page import="com.airticketsalessystem.model.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
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
        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content ">
        <div class="text-center container pt-5">
            <h1 class="text-white">KEŞFETMEYE HAZIR MISIN ?</h1>
            <div class="text-center mt-5">
                <a href="/user/signin" type="button" class="btn btn-dark me-2">Giriş Yap</a>
                <a href="/user/signup" class="btn btn-warning">Kayıt Ol</a>
            </div>
    </div>

    </div>

</section>
<footer class="p-4 bg-dark text-white text-center top fixed-bottom">Copyright © 2021 tüm hakları saklıdır</footer>
</body>
</html>