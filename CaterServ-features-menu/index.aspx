<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CaterServ.index" %>

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
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-7 col-md-12">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-4 animated bounceInDown">Welcome to CaterServ</small>
                    <h1 class="display-1 mb-4 animated bounceInDown">Book <span class="text-primary">Cater</span>Serv For Your Dream Event</h1>
                    <a href="#booknow" runat="server" class="btn btn-primary border-0 rounded-pill py-3 px-4 px-md-5 me-4 animated bounceInLeft">Book Now</a>
                    <a href="AboutUs" runat="server" class="btn btn-primary border-0 rounded-pill py-3 px-4 px-md-5 animated bounceInLeft">Know More</a>
                </div>
                <div class="col-lg-5 col-md-12">
                    <img src='<%= ResolveUrl("~/img/hero.png") %>' class="img-fluid rounded animated zoomIn" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Service Start -->
    <div class="container-fluid service py-6">
        <div class="container">
            <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Our Services</small>
                <h1 class="display-5 mb-5">What We Offer</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.1s">
                    <div class="bg-light rounded service-item">
                        <div class="service-content d-flex align-items-center justify-content-center p-4">
                            <div class="service-content-icon text-center">
                                <i class="fas fa-cheese fa-7x text-primary mb-4"></i>
                                <h4 class="mb-3">Wedding Services</h4>
                                <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                                <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.3s">
                    <div class="bg-light rounded service-item">
                        <div class="service-content d-flex align-items-center justify-content-center p-4">
                            <div class="service-content-icon text-center">
                                <i class="fas fa-pizza-slice fa-7x text-primary mb-4"></i>
                                <h4 class="mb-3">Corporate Catering</h4>
                                <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                                <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.5s">
                    <div class="bg-light rounded service-item">
                        <div class="service-content d-flex align-items-center justify-content-center p-4">
                            <div class="service-content-icon text-center">
                                <i class="fas fa-hotdog fa-7x text-primary mb-4"></i>
                                <h4 class="mb-3">Cocktail Reception</h4>
                                <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                                <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.7s">
                    <div class="bg-light rounded service-item">
                        <div class="service-content d-flex align-items-center justify-content-center p-4">
                            <div class="service-content-icon text-center">
                                <i class="fas fa-hamburger fa-7x text-primary mb-4"></i>
                                <h4 class="mb-3">Bento Catering</h4>
                                <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                                <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->

    <!-- Events Start -->
    <div class="container-fluid event py-6">
        <div class="container">
            <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Latest Events</small>
                <h1 class="display-5 mb-5">Our Social & Professional Events Gallery</h1>
            </div>
            <div class="tab-class text-center">
                <ul class="nav nav-pills d-inline-flex justify-content-center mb-5 wow bounceInUp" data-wow-delay="0.1s">
                    <li class="nav-item p-2">
                        <a class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                            <span class="text-dark" style="width: 150px;">All Events</span>
                        </a>
                    </li>
                    <li class="nav-item p-2">
                        <a class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2">
                            <span class="text-dark" style="width: 150px;">Wedding</span>
                        </a>
                    </li>
                    <li class="nav-item p-2">
                        <a class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-3">
                            <span class="text-dark" style="width: 150px;">Corporate</span>
                        </a>
                    </li>
                    <li class="nav-item p-2">
                        <a class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-4">
                            <span class="text-dark" style="width: 150px;">Cocktail</span>
                        </a>
                    </li>
                    <li class="nav-item p-2">
                        <a class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-5">
                            <span class="text-dark" style="width: 150px;">Buffet</span>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-lg-12">
                                <div class="row g-4">
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.1s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-1.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Wedding</h4>
                                                <a href="img/event-1.jpg" data-lightbox="event-1" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.3s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-2.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Corporate</h4>
                                                <a href="img/event-2.jpg" data-lightbox="event-2" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.5s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-3.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Wedding</h4>
                                                <a href="img/event-3.jpg" data-lightbox="event-3" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.7s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-4.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Buffet</h4>
                                                <a href="img/event-4.jpg" data-lightbox="event-4" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.1s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-5.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Cocktail</h4>
                                                <a href="img/event-5.jpg" data-lightbox="event-5" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.3s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-6.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Wedding</h4>
                                                <a href="img/event-6.jpg" data-lightbox="event-6" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.5s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-7.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Buffet</h4>
                                                <a href="img/event-7.jpg" data-lightbox="event-7" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.7s">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-8.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Corporate</h4>
                                                <a href="img/event-8.jpg" data-lightbox="event-17" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-12">
                                <div class="row g-4">
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-1.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Wedding</h4>
                                                <a href="img/01.jpg" data-lightbox="event-8" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-2.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Wedding</h4>
                                                <a href="img/01.jpg" data-lightbox="event-9" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-12">
                                <div class="row g-4">
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-3.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Corporate</h4>
                                                <a href="img/01.jpg" data-lightbox="event-10" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-4.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Corporate</h4>
                                                <a href="img/01.jpg" data-lightbox="event-11" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-4" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-12">
                                <div class="row g-4">
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-5.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Cocktail</h4>
                                                <a href="img/01.jpg" data-lightbox="event-12" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-6.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Cocktail</h4>
                                                <a href="img/01.jpg" data-lightbox="event-13" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-5" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-12">
                                <div class="row g-4">
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-7.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Buffet</h4>
                                                <a href="img/01.jpg" data-lightbox="event-14" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="event-img position-relative">
                                            <img class="img-fluid rounded w-100" src="img/event-8.jpg" alt="">
                                            <div class="event-overlay d-flex flex-column p-4">
                                                <h4 class="me-auto">Buffet</h4>
                                                <a href="img/01.jpg" data-lightbox="event-15" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Events End -->

    <!-- Book Us Start -->

    <div class="container-fluid contact py-6 wow bounceInUp" data-wow-delay="0.1s" id="booknow">
        <div class="container">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="row g-0">
                        <div class="col-1">
                            <img src="img/background-site.jpg" class="img-fluid h-100 w-100 rounded-start" style="object-fit: cover; opacity: 0.7;" alt="">
                        </div>
                        <div class="col-10">

                            <div class="border-bottom border-top border-primary bg-light py-5 px-4">
                                <div class="text-center">
                                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Book Us</small>
                                    <h1 class="display-5 mb-5">Where you want Our Services</h1>
                                </div>
                                <div class="row g-4 form">
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="venue" runat="server" CssClass="form-control border-primary p-2" placeholder="Enter Venue Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Venue Name is required" ControlToValidate="venue"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="city" runat="server" CssClass="form-control border-primary p-2" placeholder="Enter City Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="City Name is required" ControlToValidate="city"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="numberofpeople" runat="server" CssClass="form-control border-primary p-2" placeholder="Enter Number Of People"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Number Of People is required" ControlToValidate="numberofpeople"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="date" runat="server" Type="date" CssClass="form-control border-primary p-2" placeholder="Select Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date is required" ControlToValidate="date"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="time" runat="server" Type="time" CssClass="form-control border-primary p-2" placeholder="Select Time"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Time is required" ControlToValidate="time"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:DropDownList ID="foodtype" runat="server" CssClass="form-select border-primary p-2" aria-label="Default select example">
                                            <asp:ListItem Text="Veg" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Non - Veg" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Food Type is required" ControlToValidate="foodtype"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-12 text-center">
                                        <asp:Button type="submit" class="btn btn-primary px-5 py-3 rounded-pill" runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit Now" />
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-1">
                            <img src="img/background-site.jpg" class="img-fluid h-100 w-100 rounded-end" style="object-fit: cover; opacity: 0.7;" alt="">
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <!-- Book Us End -->

    <!-- Testimonial Start -->
    <div class="container-fluid py-6">
        <div class="container">
            <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Testimonial</small>
                <h1 class="display-5 mb-5">What Our Customers says!</h1>
            </div>
            <div class="owl-carousel owl-theme testimonial-carousel testimonial-carousel-1 mb-4 wow bounceInUp" data-wow-delay="0.1s">
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-1.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-2.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-3.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-4.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="owl-carousel testimonial-carousel testimonial-carousel-2 wow bounceInUp" data-wow-delay="0.3s">
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-1.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-2.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-3.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="testimonial-item rounded bg-light">
                    <div class="d-flex mb-3">
                        <img src="img/testimonial-4.jpg" class="img-fluid rounded-circle flex-shrink-0" alt="">
                        <div class="position-absolute" style="top: 15px; right: 20px;">
                            <i class="fa fa-quote-right fa-2x"></i>
                        </div>
                        <div class="ps-3 my-auto">
                            <h4 class="mb-0">Person Name</h4>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <div class="testimonial-content">
                        <div class="d-flex">
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                            <i class="fas fa-star text-primary"></i>
                        </div>
                        <p class="fs-5 m-0 pt-3">Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

</asp:Content>
