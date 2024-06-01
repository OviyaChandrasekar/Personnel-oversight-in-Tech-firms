<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="UploadResume.aspx.cs" Inherits="User_Upload_Resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Apply for Job</h3>
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
			<td>User Email Id</td>
			<td>
				<asp:Label Text="" class="form-control" ID="lblUserEmail" runat="server" />
			</td>
		</tr>
		
		<tr>
			<td>Resume
			</td>
			<td>
				<asp:FileUpload	runat="server" class="btn btn-dark  mb-4" ID="FileUp" />
			</td>
		</tr>
		
		
		<tr>

			<td colspan="2" style="text-align:center">
				<asp:Button class="btn btn-primary submit mb-4" ID="CmdSubmit" OnClick="CmdSubmit_Click" runat="server" Text="Apply" />
			</td>
		</tr>
	</table>

                          </div>
                </div>
            </div>
        </div>
    </section>



</asp:Content>


