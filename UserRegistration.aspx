<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">User Register</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">





                    <table class="table">
                        <tr>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label Text="" ID="lblMessage" runat="server" /></td>

                        </tr>
                        <tr>
                            <td>Username </td>
                            <td>
                                <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password </td>
                            <td>
                                <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Confirm Password </td>
                            <td>
                                <asp:TextBox ID="txtConPassword" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>

                            <td colspan="2" style="text-align:center">
                                <asp:Button class="btn btn-primary submit mb-4" ID="CmdSubmit" OnClick="CmdSubmit_Click" runat="server" Text="Login" />
                            </td>
                            
                        </tr>
                    </table>

                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
