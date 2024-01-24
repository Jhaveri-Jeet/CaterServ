<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Edit-Menu.aspx.cs" Inherits="CaterServ.admin_pages.Menu.Edit_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Edit Menu</h4>
                    <div class="form-group">
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

                        <label class="fw-semibold">Select Category</label>
                        <asp:DropDownList ID="CategoryList" runat="server" class="form-control text-black bg-white" DataValueField="id" DataTextField="name" AutoPostBack="False">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Category" ControlToValidate="CategoryList"></asp:RequiredFieldValidator>
                        <br />

                        <label for="NameInput">Menu Name</label>
                        <asp:TextBox ID="NameInput" type="text" class="form-control" placeholder="Menu Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Menu Name" ControlToValidate="NameInput"></asp:RequiredFieldValidator>
                        <br />

                        <label for="PriceInput">Menu Price</label>
                        <asp:TextBox ID="PriceInput" type="text" class="form-control" placeholder="Menu Price" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Menu Price" ControlToValidate="PriceInput"></asp:RequiredFieldValidator>
                        <br />

                        <label for="MenuImageUpload">Menu Image</label>
                        <asp:FileUpload ID="MenuImageUpload" runat="server" class="form-control p-2" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter " ControlToValidate="MenuImageUpload"></asp:RequiredFieldValidator>
                        <br />

                        <label for="CurrentMenuImage">Current Image</label>
                        <br />

                        <img class="w-25 h-25 my-3"  runat="server" ID="CurrentMenuImage" />
                        <br />

                        <label for="DescriptionInput">Menu Description</label>
                        <asp:TextBox ID="DescriptionInput" type="text" class="form-control" TextMode="MultiLine" placeholder="Menu Description" Rows="5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Category Name" ControlToValidate="DescriptionInput"></asp:RequiredFieldValidator>
                        <br />

                    </div>
                    <asp:Button runat="server" ID="btn_login" class="btn btn-primary me-2" Text="Edit" OnClick="Edit_Click" />
                    <a href="Menus.aspx" class="btn btn-light">Cancel</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
