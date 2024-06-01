<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="ViewVecancy.aspx.cs" Inherits="User_ViewVecancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">View Vacancy</h3>
            <br />
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
                    <div class="form-group">
                        <div style="overflow: scroll">


                            <div style="overflow: scroll">
                                <asp:GridView ID="GridData" OnRowCommand="GridData_RowCommand" AutoGenerateColumns="true" runat="server" CssClass="table table-condensed table-hover">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LbPath" runat="server" Text="Edit" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>

                                </asp:GridView>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </section>

</asp:Content>

