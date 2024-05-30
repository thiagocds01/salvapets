<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Projeto Salva Pets</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="Projeto Salva Pets">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- ::::::::::::::Favicon icon::::::::::::::-->
    <link rel="shortcut icon" href="<c:url value='/resources/img/Logomarca.png'/>" type="image/png'/>">

    <!-- ::::::::::::::All CSS Files here :::::::::::::: -->
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/css/vendor/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/vendor/material-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/vendor/jquery-ui.min.css'/>">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/css/plugins/animate.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/plugins/nice-select.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/plugins/swiper-bundle.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/plugins/ion.rangeSlider.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/plugins/venobox.min.css'/>">

    <!-- Style CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <!-- <link rel="stylesheet" href="<c:url value='/resources/css/vendor/vendor.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/plugins/plugins.min.css'/>">



</head>

<body>

    <!-- .....:::::: Start Header Section - Dark Header :::::.... -->
    <header class="header-section pos-absolute dark-bg sticky-header d-none d-lg-block section-fluid-270">
        <div class="header-wrapper pos-relative">
            <div class="container-fluid">
                <div class="row justify-content-between align-items-center">
                    <div class="col-auto">
                        <!-- Start Header Logo -->
                        <a href="/pet" class="header-logo">
                            <img class="img-fluid" src="<c:url value='/resources/img/Logomarca.png'/>" alt="" width="80" height="80">
                        </a>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-auto d-flex align-items-center">
                        <div class="header-event">
                            <!-- Start Menu event -->
                                <div class="menu-content">
                                    <ul>
                                        <li><a href="/pet/">Home</a></li>
                                        <li><a href="/pet/pets">Pets</a></li>
                                        <li><a href="/pet/minhaconta">Minha Conta</a></li>
                                        <li><a href="/pet/login">Login</a></li>
                                                                                <li><a href="/pet/registrar">Registrar</a></li>

                                    </ul>

                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </header>

<!-- ...::: Strat Breadcrumb Section :::... -->
    <div class="breadcrumb-section">
        <div class="box-wrapper">
            <div class="breadcrumb-wrapper breadcrumb-wrapper--style-1 pos-relative">
                <div class="breadcrumb-bg" style="">
                    <img src="<c:url value='/resources/img/blog/blog-thumbnail/teste.jpg'/>"

                </div>
                <div class="breadcrumb-content section-fluid-270">
                    <div class="breadcrumb-wrapper">
                        <div class="content">
                            <h2 class="title"><span class="text-mark">Salva Pets!</span><br> </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="customer-login section-fluid-270 section-top-gap-100">
        <div class="container-fluid">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-6 col-md-6">
                    <div class="account_form">

                        <h3 class="text-center">Alterar Senha</h3>
                        <form action="/pet/alterar-senha" method="post">

                            <div class="default-form-box">
                                <label>Senha Atual<span>*</span></label>
                                <input type="password" id="password" name="password">
                            </div>
                            <div class="default-form-box">
                                <label>Nova Senha<span>*</span></label>
                                <input type="password" id="novaSenha" name="novaSenha">
                            </div>
                            <div class="login_submit">
                                <button class="btn btn-sm btn-radius btn-default mb-4" type="submit">Alterar Senha</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div>


        <footer class="footer-section footer-section-style-2 section-top-gap-120">
            <div class="box-wrapper">
                <div class="footer-wrapper section-fluid-270">
                    <div class="container-fluid">


                        <!-- End Footer Center  -->

                        <!-- Start Footer Center  -->
                        <div class="footer-center">
                            <div class="footer-widgets-items">
                                <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                    <div id="dividerId-2" class="widget-collapse-body collapse">
                                        <li><a href="contact.html">Home</a></li>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="footer-bottom">
                            <p class="copyright-text copyright-text--dark">&copy; Projeto Salva Pets <span class="material-icons">favorite</span>
                                <a href="#"
                        </div>
                    </div>
                </div>
            </div>
        </footer>


      <!-- ::::::::::::::All JS Files here :::::::::::::: -->
      <!-- Global Vendor -->
      <script src="<c:url value='/resources/js/vendor/modernizr-3.11.2.min.js'/>'/>"></script>
      <script src="<c:url value='/resources/js/vendor/jquery-3.6.0.min.js'/>"></script>
      <script src="<c:url value='/resources/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
      <script src="<c:url value='/resources/js/vendor/bootstrap.bundle.min.js'/>"></script>
      <script src="<c:url value='/resources/js/vendor/jquery-ui.min.js'/>"></script>
      <!--Plugins JS-->
      <script src="<c:url value='/resources/js/plugins/jquery.nice-select.js'/>"></script>
      <script src="<c:url value='/resources/js/plugins/swiper-bundle.min.js'/>"></script>
      <script src="<c:url value='/resources/js/plugins/ion.rangeSlider.min.js'/>"></script>
      <script src="<c:url value='/resources/js/plugins/venobox.min.js'/>"></script>
      <script src="<c:url value='/resources/js/plugins/ajax-mail.js'/>"></script>
      <!-- Minify Version -->
      <!-- <script src="<c:url value='/resources/js/vendor/vendor.min.js'/>"></script> -->
      <!-- <script src="<c:url value='/resources/js/plugins/plugins.min.js'/>"></script> -->
      <!--Main JS (Common Activation Codes)-->
      <script src="<c:url value='/resources/js/main.js'/>"></script>
      <!-- <script src="<c:url value='/resources/js/main.min.js'/>"></script> -->

    </body>

    </html>