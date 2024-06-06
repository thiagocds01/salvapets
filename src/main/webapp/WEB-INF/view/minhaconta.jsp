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
      <!-- ...::: Strat Breadcrumb Section :::... -->
      <div class="breadcrumb-section">
         <div class="box-wrapper">
            <div class="breadcrumb-wrapper breadcrumb-wrapper--style-1 pos-relative">
               <div class="breadcrumb-bg" style="">
                  <img src="
                  <c:url value='/resources/img/blog/blog-thumbnail/teste.jpg'/>
                  "
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
      <!-- ...:::: Start Account Dashboard Section:::... -->
      <div class="account-dashboard section-fluid-270 section-top-gap-100">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12 col-md-3 col-lg-3">
                  <!-- Nav tabs -->
                  <div class="dashboard_tab_button">
                     <ul role="tablist" class="nav flex-column dashboard-list">
                        <li><a href="#inicio" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline  active">Quem somos</a></li>
                        <li><a href="#cadastrar" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">Cadastrar Pets</a></li>
                        <li><a href="/pet/gerenciarpet" class="nav-link btn btn-sm btn-default-outline ">Gerenciar Pets</a></li>
                        <li><a href="#alterarsenha" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">Alterar Senha</a></li>
                        <li><a href="/pet/logoff" class="nav-link btn btn-sm btn-default-outline">Sair</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-sm-12 col-md-9 col-lg-9">
                  <!-- Tab panes -->
                  <div class="tab-content dashboard_content">
                     <div class="tab-pane fade show active" id="inicio">
                        <h4><strong style="text-transform: capitalize;">${username}, </strong>Bem vindo!!</h4>
                        <p>A Salva Pets é uma plataforma que conecta pessoas interessadas em adotar pets ou organizações não governamentais (ONGs) que atuam em prol dos animais.
                           Além disso, a plataforma proporcionará possibilidade de realizar denúncias de maus tratos, abandono e campanhas de conscientização.
                        </p>
                     </div>
                     <div class="tab-pane fade" id="cadastrar">
                        <h3>Cadastrar Pets</h3>
                        <div class="login">
                           <div class="login_form_container">
                              <div class="account_form">
                                           <form action="/pet/cadastrar" method="post" enctype="multipart/form-data">
                                               <div class="form-group">
                                                   <label for="nome">Nome:</label>
                                                   <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome do Pet" required>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="raca">Raça:</label>
                                                   <input type="text" class="form-control" id="raca" name="raca" placeholder="Raça do Pet" required>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="porteRaca">Porte da Raça:</label>
                                                   <select class="form-control" id="porteRaca" name="porteRaca" required>
                                                       <option value="">Selecione</option>
                                                       <option value="pequeno">Pequeno</option>
                                                       <option value="medio">Médio</option>
                                                       <option value="grande">Grande</option>
                                                   </select>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="sexo">Sexo:</label>
                                                   <select class="form-control" id="sexo" name="sexo" required>
                                                       <option value="">Selecione</option>
                                                       <option value="macho">Macho</option>
                                                       <option value="femea">Fêmea</option>
                                                   </select>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="cor">Cor:</label>
                                                   <input type="text" class="form-control" id="cor" name="cor" placeholder="Cor do Pet" required>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="idade">Idade:</label>
                                                   <input type="number" class="form-control" id="idade" name="idade" placeholder="Idade do Pet" required>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="historia">História:</label>
                                                   <textarea class="form-control" id="historia" name="historia" placeholder="História do Pet" rows="3" required></textarea>
                                               </div>
                                               <div class="form-group" style="margin-bottom: 10px;">
                                                   <label for="imagem">Imagem:</label>
                                                   <input type="file" class="form-control-file" name="imagem" accept="image/*">
                                               </div>
                                               <button type="submit" class="btn btn-sm btn-radius btn-default mb-4">Cadastrar</button>
                                           </form>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="tab-pane fade" id="alterarsenha">
                        <h3>Alterar senha</h3>
                        <div class="login">
                           <div class="login_form_container">
                              <div class="account_form">
                                 <form action="/pet/alterar-senha" method="post" >
                                    <div>
                                       <label for="senhaAtual"><strong style="text-transform: capitalize;">${username},</strong> Digite a sua senha atual:</label>
                                       <input type="password" id="senhaAtual" name="senhaAtual" style="
                                          border-style: solid;
                                          border-width: 1px;
                                          border-radius: 13px;
                                          border-color: #264653;
                                          ">
                                    </div>
                                    <div>
                                       <label for="novaSenha">Agora a sua nova senha:</label>
                                       <input type="password" id="novaSenha" name="novaSenha" style="
                                          border-style: solid;
                                          border-width: 1px;
                                          border-radius: 13px;
                                          border-color: #264653;
                                          ">
                                    </div>
                                    <div class="login_submit">
                                       <button class="btn btn-sm btn-radius btn-default mb-4" type="submit" style="margin-top: 17px;">Alterar Senha</button>
                                    </div>
                                 </form>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- ...:::: End Account Dashboard Section:::... -->

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