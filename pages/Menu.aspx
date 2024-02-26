<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="CaterServ.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConstantContent" runat="server">

    <!-- Hero Start -->
    <div class="container-fluid bg-light py-6 my-6 mt-0">
        <div class="container text-center animated bounceInDown">
            <h1 class="display-1 mb-4">Menu</h1>
            <ol class="breadcrumb justify-content-center mb-0 animated bounceInDown">
                <li class="breadcrumb-item"><a href="index">Home</a></li>
                <li class="breadcrumb-item"><a href="index">Pages</a></li>
                <li class="breadcrumb-item text-dark" aria-current="page">Menu</li>
            </ol>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Menu Start -->
    <div class="container-fluid menu py-6">
        <div class="container">
            <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Our Menu</small>
                <h1 class="display-5 mb-5">Most Popular Food in the World</h1>
            </div>
            <div class="tab-class text-center">
                <form runat="server">
                    <ul class="nav nav-pills d-inline-flex justify-content-center mb-5 wow bounceInUp" data-wow-delay="0.1s">
                        <asp:Repeater ID="categoryRepeater" runat="server" OnItemCommand="categoryRepeater_ItemCommand">
                            <ItemTemplate>
                                <li class="nav-item p-2">
                                    <asp:Button runat="server" ID="categoryItem" CssClass="d-flex py-2 mx-2 border border-primary bg-white rounded-pill"
                                        CommandName="Select"
                                        CommandArgument='<%# Eval("Id") %>'
                                        Text='<%# Eval("Name") %>' />
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-6" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <asp:Repeater ID="menuRepeater" runat="server">
                                    <ItemTemplate>
                                        <div class="col-lg-6 wow bounceInUp">
                                            <div class="menu-item d-flex align-items-center">
                                                <img class="img-fluid rounded-circle" src='<%# ResolveUrl("~/uploads/") + Eval("ImageName") %>' height="150" width="100" alt="">
                                                <div class="w-100 d-flex flex-column text-start ps-4">
                                                    <div class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
                                                        <h4><%# Eval("Name") %></h4>
                                                        <h4 class="text-primary"><%# Eval("Price", "{0:C}") %></h4>
                                                    </div>
                                                    <p class="mb-0"><%# Eval("Description") %></p>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Menu End -->
</asp:Content>
