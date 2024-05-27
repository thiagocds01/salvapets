<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Pet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .container h2 {
            text-align: center;
        }
        .container img {
            display: block;
            margin: 0 auto 20px;
            border-radius: 50%;
        }
        .container .info {
            text-align: left;
            margin-bottom: 20px;
        }
        .container .info label {
            font-weight: bold;
        }
        .container .info div {
            margin-bottom: 10px;
        }
        .container table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .container table, .container th, .container td {
            border: 1px solid #ddd;
        }
        .container th, .container td {
            padding: 8px;
            text-align: left;
        }
        .container .actions {
            text-align: center;
        }
        .container form div {
            margin-bottom: 10px;
        }
        .container label {
            display: block;
            margin-bottom: 5px;
        }
        .container input[type="text"], .container input[type="number"], .container textarea {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .container button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        .container button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>




        <!-- Style CSS -->
        <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">

</head>
<body>

    <!-- .....:::::: Start Header Section - Dark Header :::::.... -->
    <header class="header-section pos-absolute dark-bg sticky-header d-none d-lg-block section-fluid-270">
        <div class="header-wrapper pos-relative">
            <div class="container-fluid">
                <div class="row justify-content-between align-items-center">
                    <div class="col-auto">
                        <!-- Start Header Logo -->
                        <a href="index.html" class="header-logo">
                            <img class="img-fluid" src="<c:url value='/resources/img/Logomarca.png'/>" alt="" width="80" height="80">
                        </a>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-auto d-flex align-items-center">
                        <div class="header-event">
                            <!-- Start Menu event -->
                                <div class="menu-content">
                                    <ul>
                                        <li><a href="home.html">Home</a></li>
                                        <li><a href="my-account.html">Minha Conta</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="checkout.html">Sair</a></li>
                                    </ul>

                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <!-- .....:::::: End Header Section - Dark Header :::::.... -->


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
    <!-- ...::: End Breadcrumb Section :::... -->
    <div class="container">
        <h2>Editar Pet</h2>
        <img src="placeholder.jpg" alt="Foto do Pet" width="100" height="100">

        <form action="/pet/${pet.id}/update" method="post">
            <div>
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" value="${pet.nome}">
            </div>
            <div>
                <label for="raca">Ra�a:</label>
                <input type="text" id="raca" name="raca" value="${pet.raca}">
            </div>
            <div>
                <label for="idade">Idade:</label>
                <input type="number" id="idade" name="idade" value="${pet.idade}">
            </div>


            <div class="actions">
                <button type="submit">Atualizar</button>
                <a href="/pet/pets"><button type="button">Voltar</button></a>
            </div>
        </form>
    </div>


    <!-- ...::: Strat Footer Section - Footer Dark :::... -->
        <footer class="footer-section footer-section-style-2 section-top-gap-120">
            <div class="box-wrapper">
                <div class="footer-wrapper section-fluid-270">
                    <div class="container-fluid">

                        <!-- Start Footer Center  -->
                        <div class="footer-center d-none">
                            <div class="footer-widgets-items">
                                <!-- Start Footer Widget Single Item -->
                                <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                    <h5 class="title">P�ginas</h5>
                                </div>
                                <!-- End Footer Widget Single Item -->
                                <!-- Start Footer Widget Single Item -->
                                <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                    <h5 class="title">Offer</h5>
                                    <ul class="footer-nav">
                                        <li><a href="#">Shop Vendor</a></li>
                                        <li><a href="#">Product House</a></li>
                                        <li><a href="#">Categories</a></li>
                                        <li><a href="#">Delivery Areas</a></li>
                                    </ul>
                                </div>
                                <!-- End Footer Widget Single Item -->
                            </div>
                        </div>
                        <!-- End Footer Center  -->

                        <!-- Start Footer Center  -->
                        <div class="footer-center">
                            <div class="footer-widgets-items">
                                <!-- Start Footer Widget Single Item -->
                                <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                    <div id="dividerId-2" class="widget-collapse-body collapse">
                                        <li><a href="contact.html">Home</a></li>
                                    </div>
                                </div>
                                <!-- End Footer Widget Single Item --><!-- End Footer Widget Single Item -->

                            </div>
                        </div>
                        <!-- End Footer Center  -->

                        <!-- Start Footer Bottom -->
                        <div class="footer-bottom">
                            <p class="copyright-text copyright-text--dark">&copy; Projeto Salva Pets <span class="material-icons">favorite</span>
                                <a href="#"
                        </div>
                        <!-- End Footer Bottom -->
                    </div>
                </div>
            </div>
        </footer>
        <!-- ...::: End Footer Section Section - Footer Dark :::... -->

        <!-- Scroll To button -->
        <div id="scroll-to-top" class="scroll-to-top"><span class="material-icons-outlined">expand_less</span></div>

        <!-- ::::::::::::::All JS Files here :::::::::::::: -->
        <!-- Global Vendor -->
        <script src="../../../resources/static/js/vendor/modernizr-3.11.2.min.js"></script>
        <script src="../../../resources/static/js/vendor/jquery-3.6.0.min.js"></script>
        <script src="../../../resources/static/js/vendor/jquery-migrate-3.3.2.min.js"></script>
        <script src="../../../resources/static/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="../../../resources/static/js/vendor/jquery-ui.min.js"></script>

        <!--Plugins JS-->
        <script src="../../../resources/static/js/plugins/jquery.nice-select.js"></script>
        <script src="../../../resources/static/js/plugins/swiper-bundle.min.js"></script>
        <script src="../../../resources/static/js/plugins/ion.rangeSlider.min.js"></script>
        <script src="../../../resources/static/js/plugins/venobox.min.js"></script>
        <script src="../../../resources/static/js/plugins/ajax-mail.js"></script>

        <!-- Minify Version -->
        <!-- <script src="assets/js/vendor/vendor.min.js"></script> -->
        <!-- <script src="assets/js/plugins/plugins.min.js"></script> -->

        <!--Main JS (Common Activation Codes)-->
        <script src="../../../resources/static/js/main.js"></script>
        <!-- <script src="assets/js/main.min.js"></script> -->
</body>
</html>

