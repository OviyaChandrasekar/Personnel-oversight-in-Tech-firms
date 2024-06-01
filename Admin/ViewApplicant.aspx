<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="ViewApplicant.aspx.cs" Inherits="Admin_ViewApplicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Application Details</h3>
            <br />
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
                    <div class="form-group">

                        <div style="overflow: scroll">
                            <asp:GridView ID="GridData" AutoGenerateColumns="true" runat="server" CssClass="table table-condensed table-hover">
                                <Columns>
                                    <asp:TemplateField HeaderText="Download">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="LbPath" runat="server" Text="Download" NavigateUrl='<%#"../resume/"+Eval("resume") %>'></asp:HyperLink>
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
