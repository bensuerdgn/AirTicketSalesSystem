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
                <a class="btn  btn-outline-light me-3"><i
                        class="far fa-user me-2"></i> ${admin.username}</a>
                <a href="/admin/logout" class="btn btn-warning"><i class="fas fa-sign-out-alt me-2"></i>Çıkış Yap</a>

            </div>
        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content">

        <div class="container pt-5">
            <div class="d-flex justify-content-end">
                <a href="/flight/createflight" class="mt-2 btn btn-success mb-2 "><i class="fas fa-pencil-alt me-2"></i>Yeni
                    Ekle</a>
            </div>

            <ul class="nav nav-tabs" id="myTab" role="tablist" style="background-color: #21252980 !important">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                            type="button" role="tab" aria-controls="home" aria-selected="true"><i
                            class="fas fa-plane me-2"></i>Uçuşlar
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                            type="button" role="tab" aria-controls="profile" aria-selected="false"><i
                            class="fas fa-users me-2"></i>Kullanıcılar
                    </button>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent"
                 style="background-color: #21252980 !important;border-radius: 0.25rem;">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <table class="table text-white" style="width: 100%;">
                        <thead>
                        <tr class="text-center">
                            <th scope="col">Nereden</th>
                            <th scope="col">Nereye</th>
                            <th scope="col">Tarih</th>
                            <th scope="col">Fiyat</th>
                            <th scope="col">İşlemler</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="item">
                            <tr class="text-center">
                                <td>${item.fromLocation}</td>
                                <td>${item.toFrom}</td>
                                <td>${item.date}</td>
                                <td>${item.price} ₺</td>
                                <td>
                                    <a href="/flight/update?id=${item.id}" class="btn btn-primary me-2"><i
                                            class="far fa-edit me-2"></i>Güncelle</a>
                                    <a href="/flight/cancel?id=${item.id}" class="btn btn-danger"><i
                                            class="far fa-trash-alt me-2"></i>İptal Et</a>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <table class="table text-white" style="width: 100%;">
                        <thead>
                        <tr class="text-center">
                            <th scope="col">Ad</th>
                            <th scope="col">Soyad</th>
                            <th scope="col">Kullanıcı Adı</th>
                            <th scope="col">E-Mail</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" var="item">
                            <tr class="text-center">
                                <td>${item.name}</td>
                                <td>${item.surname}</td>
                                <td>${item.username}</td>
                                <td>${item.email}</td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</section>
<footer class="p-4 bg-dark text-white text-center top fixed-bottom">Copyright © 2021 tüm hakları saklıdır</footer>
</body>
</html>
