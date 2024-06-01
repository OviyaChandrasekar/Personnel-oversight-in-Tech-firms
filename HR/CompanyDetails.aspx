<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="CompanyDetails.aspx.cs" Inherits="HR_Company_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Company Creation</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">


                        <table class="table">
                            <tr>
                               
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label Text="" ID="lblMessage" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>RC No.
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRcNo" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Mail-ID
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMail" class="form-control" runat="server" required></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td>Phone No.
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPhoneNo" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Mobile
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMobile" class="form-control" runat="server" required MaxLength="10"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Address
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAddress" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Area Code
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAreaCode" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>City
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCity" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>State
                                </td>
                                <td>
                                    <asp:TextBox ID="txtState" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Country
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCntry" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Total No Of Employees
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNoOfEmployee" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Contact Person
                                </td>
                                <td>
                                    <asp:TextBox ID="txtContactPerson" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Contact Person Mobile
                                </td>
                                <td>
                                    <asp:TextBox ID="txtContactMobile" class="form-control" runat="server" required MaxLength="10"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>

                                <td colspan="2" style="text-align:center">

                                    <asp:Button ID="CmdSubmit" class="btn btn-primary submit mb-4" runat="server" Text="Submit" OnClick="CmdSubmit_Click" />
                                    <asp:Button ID="CmdReset" class="btn btn-primary submit mb-4" runat="server" Text="Back" />

                                </td>
                            </tr>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </section>




</asp:Content>

