<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="User_Apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Apply for Job</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">


                        <table class="table">
                            <tr>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label Text="" ID="lblMessage" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Vacancy Id</td>
                                <td>
                                    <asp:Label Text="" ID="lblVacancyId" runat="server" />
                                </td>
                            </tr>

                            <tr>
                                <td>Department
                                </td>
                                <td>
                                    <asp:Label ID="lblDepartment" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Post
                                </td>
                                <td>
                                    <asp:Label ID="lblPost" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>

                                <td colspan="2" style="text-align:center">
                                    <asp:Button class="btn btn-primary submit mb-4" ID="CmdSubmit" OnClick="CmdSubmit_Click" runat="server" Text="Apply" />
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

