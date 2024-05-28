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
                                        <li><a href="/pet/minha-conta">Minha Conta</a></li>
                                        <li><a href="/pet/login">Login</a></li>
                                        <li><a href="/pet/logoff">Sair</a></li>
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

    <!-- ...:::: Start Account Dashboard Section:::... -->
    <div class="account-dashboard section-fluid-270 section-top-gap-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <!-- Nav tabs -->
                    <div class="dashboard_tab_button">
                        <ul role="tablist" class="nav flex-column dashboard-list">
                            <li><a href="#dashboard" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline  active">teste</a></li>
                            <li> <a href="#orders" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">teste</a></li>
                            <li><a href="#downloads" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">teste</a></li>
                            <li><a href="#address" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">teste</a></li>
                            <li><a href="#account-details" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">teste</a></li>
                            <li><a href="/pet/logoff" class="nav-link btn btn-sm btn-default-outline">Sair</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-12 col-md-9 col-lg-9">
                    <!-- Tab panes -->
                    <div class="tab-content dashboard_content">
                        <div class="tab-pane fade show active" id="dashboard">
                            <h4>teste </h4>
                        </div>
                        <div class="tab-pane fade" id="orders">
                            <h4>Orders</h4>
                            <div class="table_page table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Order</th>
                                            <th>Date</th>
                                            <th>Status</th>
                                            <th>Total</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>May 10, 2018</td>
                                            <td><span class="success">Completed</span></td>
                                            <td>$25.00 for 1 item </td>
                                            <td><a href="cart.html" class="view">view</a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>May 10, 2018</td>
                                            <td>Processing</td>
                                            <td>$17.00 for 1 item </td>
                                            <td><a href="cart.html" class="view">view</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="downloads">
                            <h4>Downloads</h4>
                            <div class="table_page table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Downloads</th>
                                            <th>Expires</th>
                                            <th>Download</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Shopnovilla - Free Real Estate PSD Template</td>
                                            <td>May 10, 2018</td>
                                            <td><span class="danger">Expired</span></td>
                                            <td><a href="#" class="view">Click Here To Download Your File</a></td>
                                        </tr>
                                        <tr>
                                            <td>Organic - ecommerce html template</td>
                                            <td>Sep 11, 2018</td>
                                            <td>Never</td>
                                            <td><a href="#" class="view">Click Here To Download Your File</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="address">
                            <p>The following addresses will be used on the checkout page by default.</p>
                            <h5 class="billing-address">Billing address</h5>
                            <a href="#" class="view">Edit</a>
                            <p><strong>Bobby Jackson</strong></p>
                            <address>Address: Your address goes here.</address>
                        </div>
                        <div class="tab-pane fade" id="account-details">
                            <h3>Account details </h3>
                            <div class="login">
                                <div class="login_form_container">
                                    <div class="account_login_form">
                                        <form action="#">
                                            <p>Already have an account? <a href="#">Log in instead!</a></p>
                                            <div class="input-radio">
                                                <span class="custom-radio"><input type="radio" value="1" name="id_gender"> Mr.</span>
                                                <span class="custom-radio"><input type="radio" value="1" name="id_gender"> Mrs.</span>
                                            </div> <br>
                                            <div class="default-form-box mb-20">
                                                <label>First Name</label>
                                                <input type="text" name="first-name">
                                            </div>
                                            <div class="default-form-box mb-20">
                                                <label>Last Name</label>
                                                <input type="text" name="last-name">
                                            </div>
                                            <div class="default-form-box mb-20">
                                                <label>Email</label>
                                                <input type="text" name="email-name">
                                            </div>
                                            <div class="default-form-box mb-20">
                                                <label>Password</label>
                                                <input type="password" name="user-password">
                                            </div>
                                            <div class="default-form-box mb-20">
                                                <label>Birthdate</label>
                                                <input type="date" name="birthday">
                                            </div>
                                            <span class="example">
                                                        (E.g.: 05/31/1970)
                                                        </span>
                                            <br>
                                            <label class="checkbox-default" for="offer">
                                                <input type="checkbox" id="offer">
                                                <span>Receive offers from our partners</span>
                                            </label>
                                            <br>
                                            <label class="checkbox-default checkbox-default-more-text" for="newsletter">
                                                <input type="checkbox" id="newsletter">
                                                <span>Sign up for our newsletter<br><em>You may unsubscribe at any moment. For that purpose, please find our contact info in the legal notice.</em></span>
                                            </label>
                                            <div class="save_button mt-3">
                                                <button class="btn btn-sm btn-default-outline" type="submit">Save</button>
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
    </div> <!-- ...:::: End Account Dashboard Section:::... -->

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
                                   <h5 class="title">Páginas</h5>
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



   </body>

   </html>