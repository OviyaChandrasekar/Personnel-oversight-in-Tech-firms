<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="ExperienceDetails.aspx.cs" Inherits="User_Experience_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Experience Details</h3>
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
			<td>User Email</td>
			<td>
				<asp:Label Text="" ID="lblUserEmail" class="form-control" runat="server" />
			</td>
		</tr>
		<tr>
			<td>Company Name
			</td>
			<td>
				<asp:TextBox ID="txtCompanyName" class="form-control" required runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Experience
			</td>
			<td>
				<asp:TextBox ID="txtExperience" class="form-control" required runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Plat Form
			</td>
			<td>
				<asp:TextBox ID="txtPlatForm" class="form-control" required runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>

			<td colspan="2"  style="text-align:center">
				<asp:Button  ID="CmdSubmit" class="btn btn-primary submit mb-4" OnClick="CmdSubmit_Click" runat="server" Text="Save" />
			</td>
		</tr>
	</table>


                        </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>


