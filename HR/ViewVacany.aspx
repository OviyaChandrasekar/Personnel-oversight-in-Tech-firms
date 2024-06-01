<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="ViewVacany.aspx.cs" Inherits="HR_View_Vacany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<div style="overflow: scroll">
		<asp:GridView ID="GridData" OnRowCommand="GridData_RowCommand" AutoGenerateColumns="true" runat="server" CssClass="table">
			
		</asp:GridView>
	</div>
</asp:Content>