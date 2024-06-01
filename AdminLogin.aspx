<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<%--    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Admin Login</h3>
            <div class="row">
                <div class="col-lg-6 contact-right-wthree-info login">
                    <div class="form-group mt-4">
                        <label>User Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" />
                    </div>
                    <div class="form-group mt-4">
                        <label class="mb-2">Password</label>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" />
                    </div>
                    <asp:Button ID="Button1" Text="Login" runat="server" class="btn btn-primary submit mb-4"  />
                </div>
            </div>
        </div>
    </section>--%>





    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Admin Login</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">




                        <table class="table">
                            <tr>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td>Username </td>
                                <td>
                                    <asp:TextBox ID="txtUN" class="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Password </td>
                                <td>
                                    <asp:TextBox ID="txtPwd" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>

                                <td colspan="2" style="text-align:center">
                                    <asp:Button  ID="CmdSubmit" OnClick="CmdSubmit_Click" class="btn btn-primary submit mb-4" runat="server" Text="Login" />
                                </td>

                            </tr>
                        </table>




                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

