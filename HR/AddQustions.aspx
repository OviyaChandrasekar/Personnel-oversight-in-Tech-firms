<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="AddQustions.aspx.cs" Inherits="HR_AddQustions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Add Qustine</h3>
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
                                <td>Question Id
                                </td>
                                <td>
                                    <asp:TextBox ID="txtQuestionId" class="form-control"  runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Department
                                </td>
                                <td>
                                    <asp:DropDownList runat="server" ID="ddlDepartment" CssClass="dropdown-item">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Question
                                </td>
                                <td>
                                    <asp:TextBox ID="txtQuestion" class="form-control" TextMode="MultiLine" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>1st choice 
                                </td>
                                <td>
                                    <asp:TextBox ID="txt1stChoice" class="form-control" runat="server" required></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td>2nd choice 
                                </td>
                                <td>
                                    <asp:TextBox ID="txt2stChoice" class="form-control" runat="server" required></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td>3rd choice 
                                </td>
                                <td>
                                    <asp:TextBox ID="txt3stChoice" class="form-control" runat="server" required></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td>4th choice 
                                </td>
                                <td>
                                    <asp:TextBox ID="txt4stChoice" class="form-control" runat="server" required></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td>Answer
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAnswer" class="form-control" runat="server" required></asp:TextBox>

                                </td>
                            </tr>

                            <tr>
                                <td>Description
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" class="form-control" TextMode="MultiLine" Rows="5" runat="server" required></asp:TextBox>
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
