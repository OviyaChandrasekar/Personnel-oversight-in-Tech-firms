<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="ViewExperienceDetails.aspx.cs" Inherits="User_ViewExperienceDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Exprience Details</h3>
            <br />
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
                    <div class="form-group">
                        <div style="overflow: scroll">
                            <asp:GridView ID="GridData" AutoGenerateColumns="true" runat="server" CssClass="table table-condensed table-hover">
                                <%--<Columns>
				<asp:TemplateField HeaderText="S.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="75px">
					<ItemTemplate>
						<asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:BoundField DataField="disName" HeaderText="Name" />
				<asp:BoundField DataField="GasCOnName" HeaderText="Gas Connection" />
				<asp:BoundField DataField="GasCompany" HeaderText="Company" />
				<asp:BoundField DataField="NoofCylinder" HeaderText="No.of Cylinder" />
				<asp:BoundField DataField="Status" HeaderText="Status" />
				<asp:BoundField DataField="CreateDate" HeaderText="Requested Date" />
			
			</Columns>--%>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
