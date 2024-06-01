<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="VecanyDetails.aspx.cs" Inherits="HR_Vecany_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Vacancy Details</h3>
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
                                <td>Vacancy Id
                                </td>
                                <td>
                                    <asp:TextBox ID="txtVacancyId" class="form-control" runat="server" required></asp:TextBox>
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
                                <td>Post Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPostName" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>No Of Vacancy
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNOOfVacancy" class="form-control" runat="server" required></asp:TextBox>

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
                                <td>Date Of Posting
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDateOfPosting" class="form-control" TextMode="Date" required runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Last Date for Application
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLastDateForApplication" class="form-control" TextMode="Date" required runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Interview Date
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInterviewDate" class="form-control" TextMode="Date" required runat="server"></asp:TextBox>
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
                                    <asp:TextBox ID="txtContactMobile" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Venue
                                </td>
                                <td>
                                    <asp:TextBox ID="txtVenue" class="form-control" runat="server" required></asp:TextBox>
                                </td>
                            </tr>

                                
                            <tr>

                                <td colspan="2" style="text-align: center">

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
