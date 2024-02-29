<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CaterServ.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConstantContent" runat="server">
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
    <!-- Hero Start -->
    <div class="container-fluid bg-light py-6 my-6 mt-0">
        <div class="container text-center animated bounceInDown">
            <h1 class="display-1 mb-4">Contact</h1>
            <ol class="breadcrumb justify-content-center mb-0 animated bounceInDown">
                <li class="breadcrumb-item"><a href="index">Home</a></li>
                <li class="breadcrumb-item"><a href="index">Pages</a></li>
                <li class="breadcrumb-item text-dark" aria-current="page">Contact</li>
            </ol>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Contact Start -->
    <div class="container-fluid contact py-6 wow bounceInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="p-5 bg-light rounded contact-form">
                <div class="row g-4">
                    <div class="col-12">
                        <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Get in touch</small>
                        <h1 class="display-5 mb-0">Contact Us For Any Queries!</h1>
                    </div>
                    <div class="col-md-6 col-lg-7">
                        <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                        <form>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Your Name is required" ControlToValidate="name"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="name" runat="server" CssClass="w-100 form-control p-3 mb-4 border-primary bg-light" placeholder="Your Name"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="email"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="email" runat="server" CssClass="w-100 form-control p-3 mb-4 border-primary bg-light" placeholder="Enter Your Email"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Format" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Message is required" ControlToValidate="message"></asp:RequiredFieldValidator>
                            <asp:TextBox TextMode="MultiLine" Height="100" ID="message" runat="server" CssClass="w-100 form-control mb-4 p-3 border-primary bg-light" Rows="4" Columns="10" placeholder="Your Message"></asp:TextBox>
                            <button class="w-100 btn btn-primary form-control p-3 border-primary bg-primary rounded-pill" type="submit">Submit Now</button>
                        </form>
                    </div>
                    <div class="col-md-6 col-lg-5">
                        <div>
                            <div class="d-inline-flex w-100 border border-primary p-4 rounded mb-4">
                                <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
                                <div class="">
                                    <h4>Address</h4>
                                    <p>123 Street, New York, USA</p>
                                </div>
                            </div>
                            <div class="d-inline-flex w-100 border border-primary p-4 rounded mb-4">
                                <i class="fas fa-envelope fa-2x text-primary me-4"></i>
                                <div class="">
                                    <h4>Mail Us</h4>
                                    <p class="mb-2">info@example.com</p>
                                    <p class="mb-0">support@example.com</p>
                                </div>
                            </div>
                            <div class="d-inline-flex w-100 border border-primary p-4 rounded">
                                <i class="fa fa-phone-alt fa-2x text-primary me-4"></i>
                                <div class="">
                                    <h4>Telephone</h4>
                                    <p class="mb-2">(+012) 3456 7890 123</p>
                                    <p class="mb-0">(+704) 5555 0127 296</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</asp:Content>
