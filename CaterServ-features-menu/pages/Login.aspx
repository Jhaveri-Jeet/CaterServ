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

    <asp:Panel ID="panel_warning" runat="server" CssClass="mt-3 fixed-top" Visible="false">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card-footer">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_examlistwarning" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <!-- Book Us Start -->
    <div class="container-fluid contact py-6 wow bounceInUp" data-wow-delay="0.1s" id="booknow">
        <div class="container">
            <div class="row g-0 justify-content-center text-center">
                <div class="col-1">
                    <img src='<%= ResolveUrl("~/img/background-site.jpg") %>' class="img-fluid h-100 w-100 rounded-start" style="object-fit: cover; opacity: 0.7;" alt="">
                </div>
                <div class="col-5">
                    <form runat="server">
                        <div class="border-bottom border-top border-primary bg-light py-5 px-4">
                            <div class="text-center">
                                <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">CaterServ</small>
                                <h1 class="display-5 mb-5">Sign In</h1>
                            </div>
                            <div class="row g-4 form">
                                <div class="col-12">
                                    <input type="text" runat="server" id="Username" class="form-control border-primary p-2" placeholder="Enter Username: ">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email" ControlToValidate="Username"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12">
                                    <input type="password" runat="server" id="Password" class="form-control border-primary p-2" placeholder="Enter Password: ">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="Password"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12 text-center">
                                    <asp:Button CssClass="btn btn-primary px-5 py-3 rounded-pill" Text="Sign In" runat="server" ID="SignBtn" OnClick="btn_login_Click" />
                                </div>
                                <div class="col-12 text-center">
                                    <a href="Register" class="px-4 py-2 rounded-pill">Don't have an account ?</a>
                                </div>
                            </div>
                        </div>
                    </form>
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
