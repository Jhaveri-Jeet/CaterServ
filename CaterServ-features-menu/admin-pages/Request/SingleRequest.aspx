<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SingleRequest.aspx.cs" Inherits="CaterServ.admin_pages.Request.SingleRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card">
                    <div class="px-4 py-2  bg-primary border rounded-top">
                        <h5 class="card-title text-white mb-0 py-3">Details</h5>
                    </div>
                    <div class="card-body">
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
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><strong>Date:</strong><p runat="server" id="Date">January 1, 2024</p>
                                </li>
                                <li class="list-group-item"><strong>No Of People:</strong><p runat="server" id="NoOfPeople">100</p>
                                </li>
                                <li class="list-group-item"><strong>Food Type:</strong><p runat="server" id="FoodType">Buffet</p>
                                </li>
                                <li class="list-group-item"><strong>Time:</strong><p runat="server" id="Time">6:00 PM</p>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="px-4 py-2  bg-primary border rounded-top">
                        <h5 class="card-title text-white mb-0 py-3">Contact Information</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><strong>Name:</strong><p runat="server" id="Name">JohnDoe</p>
                            </li>
                            <li class="list-group-item"><strong>Email:</strong><p runat="server" id="Email">johndoe@example.com</p>
                            </li>
                            <li class="list-group-item"><strong>Number:</strong><p runat="server" id="Number">+1 (123) 456-7890</p>
                            </li>
                            <li class="list-group-item"><strong>City:</strong><p runat="server" id="City">Los Angeles</p>
                            </li>
                            <li class="list-group-item"><strong>Venue:</strong><p runat="server" id="Venue">Convention Center</p>
                            </li>
                            <li class="list-group-item"><strong>Status:</strong>
                                <asp:DropDownList ID="Status" runat="server" class="form-control text-black bg-white" DataValueField="id" DataTextField="name" AutoPostBack="true" OnSelectedIndexChanged="status_SelectedIndexChanged">
                                </asp:DropDownList>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
