<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="ViewResults.aspx.cs" Inherits="HR_View_Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<div style="overflow: scroll">
		<asp:GridView ID="GridData" AutoGenerateColumns="true" runat="server" CssClass="table">
		</asp:GridView>
	</div>
</asp:Content>

