<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddHr.aspx.cs" Inherits="Admin_Add_Hr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    

        <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">HR Creation</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">



     <table class="table">

		<tr>
			<td colspan="2">
				<asp:Label Text="" ID="lblMessage" runat="server" />
			</td>
		</tr>
		<tr>
			<td>HR ID
			</td>
			<td>
				<asp:TextBox ID="txtId" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Name
			</td>
			<td>
				<asp:TextBox ID="txtName" runat="server" class="form-control" required></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Mail-ID
			</td>
			<td>
				<asp:TextBox ID="txtMail" runat="server" class="form-control" required> </asp:TextBox>

			</td>
		</tr>
		<tr>
			<td>Password
			</td>
			<td>
				<asp:TextBox ID="txtPwd" TextMode="Password" class="form-control" required runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Mobile
			</td>
			<td>
				<asp:TextBox ID="txtMobile" runat="server" class="form-control" required MaxLength="10"></asp:TextBox>
			</td>
		</tr>

		<tr>
			<td>Date of Birth
			</td>
			<td>
				<asp:TextBox ID="txtDOB" TextMode="Date" class="form-control" required runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>City
			</td>
			<td>
				<asp:DropDownList ID="ddltxtcity" runat="server" CssClass="dropdown-item" >
                    <asp:ListItem Text="Coimbatore"/>
                    <asp:ListItem Text="Madurai"/>
                    <asp:ListItem Text="Trichy"/>
                    <asp:ListItem Text="Chennai"/>


                   
				</asp:DropDownList>
			</td>
		</tr>
		<tr>
			<td>State
			</td>
			<td>
				<asp:DropDownList ID="ddlstate" runat="server" CssClass="dropdown-item">
                    <asp:ListItem Text="Tamilnadu"/>
                    <asp:ListItem Text="Kerala"/>
                    <asp:ListItem Text="Karnadaka"/>
                    <asp:ListItem Text="Andra Pradesh"/>


                   
				</asp:DropDownList>
			</td>
		</tr>
		<tr>
			<td>Country
			</td>
			<td>
				<asp:DropDownList ID="ddlcount" runat="server" CssClass="dropdown-item">
                    <asp:ListItem Text="India"/>
                    <asp:ListItem Text=""/>
                    <asp:ListItem Text=""/>
                    <asp:ListItem Text=""/>


                   
				</asp:DropDownList>
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

