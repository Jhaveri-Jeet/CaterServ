﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CaterServ.admin_pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Star Admin2 </title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../admin-assets/vendors/js/vendor.bundle.base.js">
    <link rel="stylesheet" href="../admin-assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../admin-assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../admin-assets/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="../admin-assets/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="../admin-assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../admin-assets/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../admin-assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center auth px-0">
                    <div class="row w-100 mx-0">
                        <div class="col-lg-4 mx-auto">
                            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                                <div class="brand-logo">
                                    <img src="../admin-assets/images/logo.svg" alt="logo">
                                </div>
                                <h4>Hello! let's get started</h4>
                                <h6 class="fw-light">Sign in to continue.</h6>
                                <form class="pt-3">
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="mt-3">
                                        <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../admin-index.aspx">SIGN IN</a>
                                    </div>
                                    <div class="my-2 d-flex justify-content-between align-items-center">
                                        <div class="form-check">
                                            <label class="form-check-label text-muted">
                                                <input type="checkbox" class="form-check-input">
                                                Keep me signed in
                                            </label>
                                        </div>
                                        <a href="#" class="auth-link text-black">Forgot password?</a>
                                    </div>
                                    <div class="mb-2">
                                        <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                                            <i class="ti-facebook me-2"></i>Connect using facebook
                                        </button>
                                    </div>
                                    <div class="text-center mt-4 fw-light">
                                        Don't have an account? <a href="register.html" class="text-primary">Create</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->

        <!-- plugins:js -->
        <script src="../admin-assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->

        <!-- Plugin js for this page -->
        <script src="../admin-assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
        <!-- End plugin js for this page -->

        <!-- inject:js -->
        <script src="../admin-assets/js/off-canvas.js"></script>
        <script src="../admin-assets/js/hoverable-collapse.js"></script>
        <script src="../admin-assets/js/template.js"></script>
        <script src="../admin-assets/js/settings.js"></script>
        <script src="../admin-assets/js/todolist.js"></script>
        <!-- endinject -->

    </form>
</body>
</html>