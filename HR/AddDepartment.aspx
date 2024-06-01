<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="HR_Add_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Department Creation</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">


                        <table class="table">
                            <tr>
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label Text="" ID="lblMessage" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Department Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Department Description
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" required></asp:TextBox>
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


