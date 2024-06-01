<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="ViewApplicant.aspx.cs" Inherits="HR_View_Applicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div style="overflow: scroll">
		<asp:GridView ID="GridData" AutoGenerateColumns="true" runat="server" CssClass="table">
			<Columns>
				<asp:TemplateField HeaderText="Resume">
					<ItemTemplate>
						<asp:HyperLink ID="LbPath" runat="server" Text="Download" NavigateUrl='<%#"../resume/"+Eval("resume") %>'></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateField>

			</Columns>
		</asp:GridView>
	</div>
</asp:Content>



