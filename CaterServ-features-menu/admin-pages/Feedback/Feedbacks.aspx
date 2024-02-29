<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="CaterServ.admin_pages.Feedback.Feedbacks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-body d-flex justify-content-between m-0 p-0">
                    <h4 class="card-title start-0 p-3">Feedbacks</h4>
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
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="dispalyFeedback_ItemCommand">
                        <headertemplate>
                            <table class="table table-striped ">
                                <thead>
                                    <tr class="text-center">
                                        <th>No.</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </headertemplate>
                        <itemtemplate>
                            <tr class="text-center">
                                <td><%# (Container.ItemIndex + 1).ToString() %></td>
                                <td><%# Eval("Title") %></td>
                                <td><%# Eval("Description") %></td>
                                <td>
                                    <asp:LinkButton runat="server" ID="deleteBtn" type="button" class="btn btn-danger btn-rounded btn-icon" CommandName="DeleteFeedback" CommandArgument='<%# Eval("id") %>'>
                                        <i class="ti-trash"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </itemtemplate>
                        <footertemplate>
                            </tbody>
                 </table>
                        </footertemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
