<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hr.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="HR_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<table class="Table">
		<tr>
			<td colspan="2">Change Password
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<asp:Label Text="" ID="lblMessage" runat="server" />
			</td>
		</tr>
		<tr>
			<td>New Password
			</td>
			<td>
				<asp:TextBox ID="txtPassword" runat="server" class="form-control"  TextMode="Password" required></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Confirm Password
			</td>
			<td>
				<asp:TextBox ID="txtCPassword" runat="server" class="form-control"  TextMode="Password" required></asp:TextBox>
			</td>
		</tr>


		<tr>

			<td colspan="2">

				<asp:Button ID="CmdSubmit" CssClass="Button" runat="server" Text="Submit" OnClick="CmdSubmit_Click" />
				<asp:Button ID="CmdReset" CssClass="Button" runat="server" Text="Back" />

			</td>
		</tr>
	</table>
</asp:Content>
