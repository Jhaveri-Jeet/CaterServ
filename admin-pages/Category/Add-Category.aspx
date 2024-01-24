<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add-Category.aspx.cs" Inherits="CaterServ.admin_pages.Category.Add_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Add Category</h4>
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
                        <label for="exampleInputUsername1">Category Name</label>
                        <asp:TextBox ID="exampleInputCategory1" type="text" class="form-control" placeholder="Category Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Category Name" ControlToValidate="exampleInputCategory1"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button runat="server" ID="btn_login" class="btn btn-primary me-2" Text="Add" OnClick="add_category" />
                    <a href="Categories.aspx" class="btn btn-light">Cancel</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
