<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CaterServ.pages.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CaterServ - Catering Services</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Playball&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href='<%= ResolveUrl("~/lib/animate/animate.min.css") %>' />
    <link href='<%= ResolveUrl("~/lib/lightbox/css/lightbox.min.css") %>' rel="stylesheet">
    <link href='<%= ResolveUrl("~/lib/owlcarousel/owl.carousel.min.css")%>' rel="stylesheet">
    <link rel="stylesheet" href='<%= ResolveUrl("~/css/bootstrap.min.css") %>' />
    <link rel="stylesheet" href='<%= ResolveUrl("~/css/style.css") %>' />
</head>
<body>

    <!-- Spinner Start -->
    <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <!-- Book Us Start -->
    <div class="container-fluid contact py-6 wow bounceInUp" data-wow-delay="0.1s" id="booknow">
        <div class="container">
            <div class="row g-0 justify-content-center text-center">
                <div class="col-1">
                    <img src='<%= ResolveUrl("~/img/background-site.jpg") %>' class="img-fluid h-100 w-100 rounded-start" style="object-fit: cover; opacity: 0.7;" alt="">
                </div>
                <div class="col-5">
                    <div class="border-bottom border-top border-primary bg-light py-5 px-4">
                        <div class="text-center">
                            <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">CaterServ</small>
                            <h1 class="display-5 mb-5">Sign In</h1>
                        </div>
                        <div class="row g-4 form">
                            <div class="col-12">
                                <input type="text" class="form-control border-primary p-2" placeholder="Enter Username: ">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control border-primary p-2" placeholder="Enter Password: ">
                            </div>
                            <div class="col-12 text-center">
                                <button type="submit" class="btn btn-primary px-5 py-3 rounded-pill">Sign In</button>
                            </div>
                            <div class="col-12 text-center">
                                <a href="pages/Register" class="px-4 py-2 rounded-pill">Don't have an account</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-1">
                    <img src='<%= ResolveUrl("~/img/background-site.jpg") %>' class="img-fluid h-100 w-100 rounded-end" style="object-fit: cover; opacity: 0.7;" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Book Us End -->

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src='<%= ResolveUrl("~/lib/wow/wow.min.js") %>'></script>
    <script src='<%= ResolveUrl("~/lib/easing/easing.min.js") %>'></script>
    <script src='<%= ResolveUrl("~/lib/waypoints/waypoints.min.js") %>'></script>
    <script src='<%= ResolveUrl("~/lib/counterup/counterup.min.js") %>'></script>
    <script src='<%= ResolveUrl("~/lib/lightbox/js/lightbox.min.js") %>'></script>
    <script src='<%= ResolveUrl("~/lib/owlcarousel/owl.carousel.min.js") %>'></script>

    <!-- Template Javascript -->
    <script src='<%= ResolveUrl("~/js/main.js") %>'></script>
</body>
</html>
