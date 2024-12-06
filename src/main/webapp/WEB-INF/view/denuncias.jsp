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
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
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
    <header class="header-section pos-absolute dark-bg sticky-header d-none d-lg-block section-fluid-270" style>
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
                                        <li><a href="/pet/mapdenuncias">Denuncias</a></li>
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


    <!-- ...::: Strat Breadcrumb Section :::... -->
    <div class="breadcrumb-section">
        <div class="box-wrapper">
            <div class="breadcrumb-wrapper breadcrumb-wrapper--style-1 pos-relative">
                <div class="breadcrumb-bg">
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

    <!-- ...:::: Start Shop List Section:::... -->
    <div class="shop-list-section section-fluid-270 section-top-gap-100">
        <div class="box-wrapper">
            <div class="shop-list-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="product-shop-list-items">
                                <div class="row mb-n25">
                                        <!-- Start Product Single Item - Style 1 -->
                                            <div class="container">

                                                            <div id="map" style="width: 100%; height: 500px; z-index: 0; border-radius: 16px; shadow: 0 4px 30px rgba(0, 0, 0, 0.1);"></div>

                                            </div>


                                         </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- ...:::: End Shop List Section:::... -->


    <!-- ...::: Strat Footer Section - Footer Dark :::... -->
    <footer class="footer-section footer-section-style-2 section-top-gap-120">
        <div class="box-wrapper">
            <div class="footer-wrapper section-fluid-270">
                <div class="container-fluid">

                    <!-- Start Footer Center  -->
                    <div class="footer-center">
                            <!-- Start Footer Widget Single Item -->
                            <div style="text-align: center; color:black;" class="footer-widgets-single-item footer-widgets-single-item--dark">
                            <h2 class="title" style="text-align: center; color:black;">Desenvolvedores </h2>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Lucas Carlos Rodex Campos</i><br>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Ramis�s J�nata de Assis Melo</i><br>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Reginaldo Napole</i><br>
                                    <i style="text-align: center; color:black;" class="bi bi-person-fill-gear"> Thiago Concei��o</i><br>



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

      <script>
        // Configura��o inicial do mapa
        const config = {
          minZoom: 7,
          maxZoom: 18,
        };

        const initialLat = -16.704769; // S�o Paulo
        const initialLng = -49.264412; // S�o Paulo
        const zoom = 11;

        const map = L.map("map", config).setView([initialLat, initialLng], zoom);

        L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
          attribution:
            '&copy; OpenStreetMap',
        }).addTo(map);

        // �cone personalizado
        const customIcon = L.icon({
          iconUrl: 'https://resolvendoaweb.com.br/img/veterinario.png',
          iconSize: [32, 32],
          iconAnchor: [16, 32],
          popupAnchor: [0, -32],
        });

        // Fun��o para adicionar marcadores com hover
        function addMarkerWithHover(lat, lng, popupText, hoverText) {
          const marker = L.marker([lat, lng], { icon: customIcon })
            .bindPopup(popupText)
            .addTo(map);

          marker.on('mouseover', function (e) {
            marker.bindTooltip(hoverText, { permanent: false, direction: 'top' }).openTooltip();
          });

          marker.on('mouseout', function (e) {
            map.closeTooltip();
          });
        }

        // Fun��o para consumir a API
        async function fetchPoints() {
          try {
            const response = await fetch('http://localhost/pet/api/denuncias');
            const data = await response.json();

            data.forEach((denuncia) => {
              const { latitude, longitude, descricao, relato } = denuncia;
              if (latitude && longitude) {
                addMarkerWithHover(
                  latitude,
                  longitude,
                  descricao || "Sem descri��o",
                  relato || "Sem informa��es"
                );
              }
            });
          } catch (error) {
            console.error("Erro ao carregar dados da API:", error);
          }
        }

        fetchPoints();
      </script>

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