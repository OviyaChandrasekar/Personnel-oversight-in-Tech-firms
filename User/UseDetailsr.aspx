<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="UseDetailsr.aspx.cs" Inherits="User_UseDetailsr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">User Registration</h3>
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
                                <td>Mail Id </td>
                                <td>
                                    <asp:Label ID="lblMailId" class="form-control" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>First Name </td>
                                <td>
                                    <asp:TextBox ID="txtFirstName"  class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Last Name </td>
                                <td>
                                    <asp:TextBox ID="txtLastName" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td>
                                    <asp:RadioButtonList runat="server" ID="rdbGender" CssClass="radio-btn" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="Male" Selected="True" />
                                        <asp:ListItem Text="Female" />
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <asp:TextBox ID="txtAddress" class="form-control" TextMode="MultiLine" Rows="5" Columns="5" required runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Country
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlcount" CssClass="dropdown-item" runat="server">
                                        <asp:ListItem Text="India" />

                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Area Code</td>
                                <td>
                                    <asp:TextBox ID="txtAreaCode" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Mobile</td>
                                <td>
                                    <asp:TextBox ID="txtMobile" class="form-control" MaxLength="10" TextMode="MultiLine" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Language Known</td>
                                <td>
                                    <asp:TextBox ID="txtLanguageKnown" class="form-control" TextMode="MultiLine" Rows="5" Columns="5" required runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Resume</td>
                                <td>
                                    <asp:HyperLink Text="Click Here to see" class="form-control" Target="_blank" ID="hypResume" runat="server" />
                                </td>
                            </tr>
                            <tr>

                                <td style="text-align:center">
                                    <asp:Button class="btn btn-primary submit mb-4" ID="CmdSubmit" OnClick="CmdSubmit_Click" runat="server" Text="Update" />
                                </td>
                                <td style="text-align:center">
                                    <asp:Button ID="Button1" Text="Clear" class="btn btn-primary submit mb-4" runat="server" />
                                </td>
                            </tr>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>

