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



    <!-- ...::: Strat Breadcrumb Section :::... -->
    <div class="breadcrumb-section">
        <div class="box-wrapper">
            <div class="breadcrumb-wrapper breadcrumb-wrapper--style-1 pos-relative">
                <div class="breadcrumb-bg">
                    <img src="../../../resources/static/img/breadcrumb/breadcrumb-img-product-details-page.webp" alt="">
                </div>
                <div class="breadcrumb-content section-fluid-270">
                    <div class="breadcrumb-wrapper">
                        <div class="content">
                            <span class="title-tag">teste</span>
                            <h2 class="title"><span class="text-mark">Account</span> Page</h2>
                        </div>
                        <ul class="breadcrumb-nav">
                            <li><a href="shop-grid-sidebar-left.html">Shop</a></li>
                            <li>My Account</li>
                        </ul>
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
                            <li><a href="#dashboard" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline  active">Dashboard</a></li>
                            <li> <a href="#orders" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">Orders</a></li>
                            <li><a href="#downloads" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">Downloads</a></li>
                            <li><a href="#address" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">Addresses</a></li>
                            <li><a href="#account-details" data-bs-toggle="tab" class="nav-link btn btn-sm btn-default-outline ">Account details</a></li>
                            <li><a href="login.html" class="nav-link btn btn-sm btn-default-outline">logout</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-12 col-md-9 col-lg-9">
                    <!-- Tab panes -->
                    <div class="tab-content dashboard_content">
                        <div class="tab-pane fade show active" id="dashboard">
                            <h4>Dashboard </h4>
                            <p>From your account dashboard. you can easily check &amp; view your <a href="#">recent orders</a>, manage your <a href="#">shipping and billing addresses</a> and <a href="#">Edit your password and account details.</a></p>
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
                    <!-- Start Footer Top  -->
                    <div class="footer-top">
                        <div class="footer-top-left">
                            <div class="footer-contact-items">
                                <a class="icon-left" href="tel:+12345678910"><img class="icon-svg" src="../../../resources/static/img/icons/icon-ios-call-dark.svg" alt="">+123 4567 8910</a>
                                <a class="icon-left" href="mailto:demo@example.com"><img class="icon-svg" src="../../../resources/static/img/icons/icon-mail-open-dark.svg" alt="">demo@example.com</a>
                            </div>
                        </div>
                        <div class="footer-top-right">
                            <div class="footer-social">
                                <a href="https://www.facebook.com/" target="_blank" rel="noopener"><img class="icon-svg" src="../../../resources/static/img/icons/icon-facebook-f-dark.svg" alt=""></a>
                                <a href="https://twitter.com/" target="_blank" rel="noopener"><img class="icon-svg" src="../../../resources/static/img/icons/icon-twitter-dark.svg" alt=""></a>
                                <a href="https://www.pinterest.com/" target="_blank" rel="noopener"><img class="icon-svg" src="../../../resources/static/img/icons/icon-pinterest-p-dark.svg" alt=""></a>
                                <a href="https://dribbble.com/" target="_blank" rel="noopener"><img class="icon-svg" src="../../../resources/static/img/icons/icon-dribbble-dark.svg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!-- End Footer Top  -->

                    <!-- Start Footer Center  -->
                    <div class="footer-center d-none">
                        <div class="footer-widgets-items">
                            <!-- Start Footer Widget Single Item -->
                            <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                <h5 class="title">Product</h5>
                                <ul class="footer-nav">
                                    <li><a href="#">Shop Vendor</a></li>
                                    <li><a href="#">Product House</a></li>
                                    <li><a href="#">Categories</a></li>
                                    <li><a href="#">Delivery Areas</a></li>
                                    <li><a href="#">Delivery Cost</a></li>
                                </ul>
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
                                    <li><a href="#">Delivery Cost</a></li>
                                </ul>
                            </div>
                            <!-- End Footer Widget Single Item -->
                            <!-- Start Footer Widget Single Item -->
                            <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                <h5 class="title">Information</h5>
                                <ul class="footer-nav">
                                    <li><a href="#">Shop Vendor</a></li>
                                    <li><a href="#">Product House</a></li>
                                    <li><a href="#">Categories</a></li>
                                    <li><a href="#">Delivery Areas</a></li>
                                    <li><a href="#">Delivery Cost</a></li>
                                </ul>
                            </div>
                            <!-- End Footer Widget Single Item -->
                            <!-- Start Footer Widget Single Item -->
                            <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                <h5 class="title">About</h5>
                                <ul class="footer-nav">
                                    <li><a href="#">Shop Vendor</a></li>
                                    <li><a href="#">Product House</a></li>
                                    <li><a href="#">Categories</a></li>
                                    <li><a href="#">Delivery Areas</a></li>
                                    <li><a href="#">Delivery Cost</a></li>
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
                                <h5 class="title">Product</h5>
                                <h5 class="collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#dividerId-1">Product</h5>
                                <div id="dividerId-1" class="widget-collapse-body collapse">
                                    <ul class="footer-nav">
                                        <li><a href="contact.html">Shop Vendor</a></li>
                                        <li><a href="contact.html">Product House</a></li>
                                        <li><a href="contact.html">Categories</a></li>
                                        <li><a href="contact.html">Delivery Areas</a></li>
                                        <li><a href="contact.html">Delivery Cost</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Footer Widget Single Item -->
                            <!-- Start Footer Widget Single Item -->
                            <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                <h5 class="title">Offer</h5>
                                <h5 class="collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#dividerId-2">Offer</h5>
                                <div id="dividerId-2" class="widget-collapse-body collapse">
                                    <ul class="footer-nav">
                                        <li><a href="contact.html">Shop Vendor</a></li>
                                        <li><a href="contact.html">Product House</a></li>
                                        <li><a href="contact.html">Categories</a></li>
                                        <li><a href="contact.html">Delivery Areas</a></li>
                                        <li><a href="contact.html">Delivery Cost</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Footer Widget Single Item -->
                            <!-- Start Footer Widget Single Item -->
                            <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                <h5 class="title">Information</h5>
                                <h5 class="collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#dividerId-3">Information</h5>
                                <div id="dividerId-3" class="widget-collapse-body collapse">
                                    <ul class="footer-nav">
                                        <li><a href="contact.html">Shop Vendor</a></li>
                                        <li><a href="contact.html">Product House</a></li>
                                        <li><a href="contact.html">Categories</a></li>
                                        <li><a href="contact.html">Delivery Areas</a></li>
                                        <li><a href="contact.html">Delivery Cost</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Footer Widget Single Item -->
                            <!-- Start Footer Widget Single Item -->
                            <div class="footer-widgets-single-item footer-widgets-single-item--dark">
                                <h5 class="title">About</h5>
                                <h5 class="collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#dividerId-4">About</h5>
                                <div id="dividerId-4" class="widget-collapse-body collapse">
                                    <ul class="footer-nav">
                                        <li><a href="contact.html">Shop Vendor</a></li>
                                        <li><a href="contact.html">Product House</a></li>
                                        <li><a href="contact.html">Categories</a></li>
                                        <li><a href="contact.html">Delivery Areas</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Footer Widget Single Item -->
                        </div>
                    </div>
                    <!-- End Footer Center  -->

                    <!-- Start Footer Bottom -->
                    <div class="footer-bottom">
                        <p class="copyright-text copyright-text--dark">&copy; 2021 Mart Up. Made with <span class="material-icons">favorite</span> by <a href="https://hasthemes.com/" target="_blank" rel="noopener noreferrer">Codecarnival</a></p>
                        <a href="#" class="payment-logo"><img class="img-fluid" src="../../../resources/static/img/company-logo/payment-logo.png" alt=""></a>
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