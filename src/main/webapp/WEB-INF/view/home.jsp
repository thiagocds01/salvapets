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
    <!-- .....:::::: End Header Section - Dark Header :::::.... -->

    <!-- ...::: Strat Hero Slider Section :::... -->
    <div class="hero-slider-section hero-slider-light">
        <div class="box-wrapper">
            <div class="hero-slider-wrapper">
                <div class="">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slider">
                                <!-- Slider main container -->
                                <div class="swiper-container">
                                    <!-- Additional required wrapper -->
                                    <div class="swiper-wrapper">
                                        <!-- Slides -->
                                        <!-- Start Hero Slider Single Item -->
                                        <div class="hero-slider-single-item--style-1 swiper-slide hero-bg">
                                            <div class="image">
                                                <img class="img-fluid" src="<c:url value='resources/img/imagem-login.png'/>" width="469" height="760" loading="lazy" alt="hero-image-1">
                                            </div>
                                            <div class="image-shape"></div>
                                            <div class="content-box">
                                                <div class="row">
                                                    <div class="col-xl-5 offset-xl-1 col-lg-5 col-md-8 offset-md-1 col-10 ">
                                                        <div class="content">
                                                            <h2 class="title">Você pode se apaixonar agora por um pet </h2>
                                                            <a href="/pet/pets" class="btn btn-lg btn-default">Buscar pets</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="hero-slider-shape hero-slider-top-shape"><img class="img-fluid" src="<c:url value='resources/img/icons/hero-slider-top-shape.svg'/>" width="113" height="107" loading="lazy" alt="hero-shape-1"></div>
                                            <div class="hero-slider-shape hero-slider-bottom-shape"><img class="img-fluid" src="<c:url value='resources/img/icons/hero-slider-bottom-shape.svg'/>" width="221" height="234" loading="lazy" alt="hero-shape-1"></div>
                                        </div>
                                        <!-- End Hero Slider Single Item -->


                                    </div>
                                    <!-- If we need pagination -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ...::: Strat Footer Section - Footer Dark :::... -->
    <footer class="footer-section footer-section-style-2">
        <div class="box-wrapper">
            <div class="footer-wrapper section-fluid-270">
                <div class="container-fluid">

                    <!-- Start Footer Center  -->
                    <div class="footer-center">
                            <!-- Start Footer Widget Single Item -->
                            <div style="text-align: center; color:black;" class="footer-widgets-single-item footer-widgets-single-item--dark">
                            <h2 class="title" style="text-align: center; color:black;">Desenvolvedores </h2>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Lucas Carlos Rodex Campos</i><br>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Ramisés Jônata de Assis Melo</i><br>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Reginaldo Napole</i><br>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Thiago Conceição</i><br>



                                </div>
                            </div>
                            <!-- End Footer Widget Single Item --><!-- End Footer Widget Single Item -->
                    </div>
                    <!-- End Footer Center  -->

                    <!-- Start Footer Bottom -->
                        <p style="text-align: center;padding-bottom: 10px; font-size:10px;" class="copyright-text copyright-text--dark">&copy; Projeto Salva Pets <i style="color:red" class="bi bi-heart-fill"></i>

                    <!-- End Footer Bottom -->
                </div>
            </div>
        </div>
    </footer>
    <!-- ...::: End Footer Section Section - Footer Dark :::... -->

      <!-- ::::::::::::::All JS Files here :::::::::::::: -->
            <!-- Global Vendor -->
            <script src="<c:url value='/resources/js/vendor/modernizr-3.11.2.min.js'/>"></script>
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
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


          </body>

          </html>