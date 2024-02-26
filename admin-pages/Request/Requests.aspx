<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Requests.aspx.cs" Inherits="CaterServ.admin_pages.Request.Requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-body d-flex justify-content-between m-0 p-0">
                    <h4 class="card-title start-0 p-3">Requests</h4>
                    <p class="card-description end-0">
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
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <table class="table table-striped ">
                                <thead>
                                    <tr class="text-center">
                                        <th>No.</th>
                                        <th>Date</th>
                                        <th>Country</th>
                                        <th>State</th>
                                        <th>No Of People</th>
                                        <th>Food Type</th>
                                        <th>Time</th>
                                        <th>View</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="text-center">
                                <td><%# (Container.ItemIndex + 1).ToString() %></td>
                                <td><%# Eval ("Date") %></td>
                                <td><%# Eval ("Country") %></td>
                                <td><%# Eval ("State") %></td>
                                <td><%# Eval ("NumberOfPeople") %></td>
                                <td><%# Eval ("FoodType") %></td>
                                <td><%# Eval ("Time") %></td>
                                <td>
                                    <a role="button" href="./SingleRequest.aspx?id=<%# Eval ("Id") %>" class="btn btn-primary btn-rounded btn-icon">
                                        <i class="ti-eye"></i>
                                    </a>
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
