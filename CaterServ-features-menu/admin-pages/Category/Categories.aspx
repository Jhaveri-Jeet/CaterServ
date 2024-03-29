﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="CaterServ.admin_pages.Category.Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-body d-flex justify-content-between m-0 p-0">
                    <h4 class="card-title start-0 p-3">Categories</h4>
                    <p class="card-description end-0">
                        <a class="btn btn-primary btn-rounded btn-fw" href="Add-Category.aspx">Add</a>
                    </p>
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
                <div class="table-responsive border border-gray rounded-2">
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="dispalyCategory_ItemCommand">
                        <HeaderTemplate>
                            <table class="table table-striped ">
                                <thead>
                                    <tr class="text-center">
                                        <th>No.</th>
                                        <th>Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="text-center">
                                <td><%# (Container.ItemIndex + 1).ToString() %></td>
                                <td><%# Eval("Name") %></td>
                                <td class="d-flex justify-content-evenly">
                                    <a href="Edit-Category.aspx?id=<%# Eval("Id") %>" role="button" class="btn btn-primary btn-rounded btn-icon">
                                        <i class="ti-pencil"></i>
                                    </a>
                                    <asp:LinkButton runat="server" ID="deleteBtn" type="button" class="btn btn-danger btn-rounded btn-icon" CommandName="DeleteCategory" CommandArgument='<%# Eval("id") %>'>
                                        <i class="ti-trash"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
