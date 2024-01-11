<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CaterServ.admin_pages.Login" %>

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
                                        <asp:TextBox ID="exampleInputEmail1" type="text" class="form-control form-control-lg" placeholder="Username" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email" ControlToValidate="exampleInputEmail1"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="exampleInputPassword1" type="password" class="form-control form-control-lg" placeholder="Password" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="exampleInputPassword1"></asp:RequiredFieldValidator>
                                    </div>
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
                                    <div class="mt-3">
                                        <asp:Button runat="server" ID="btn_login" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" Text="Sign In" OnClick="btn_login_Click" />
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
