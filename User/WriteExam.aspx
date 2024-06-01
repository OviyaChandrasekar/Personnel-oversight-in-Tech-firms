<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="WriteExam.aspx.cs" Inherits="User_WriteExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
        <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Exam</h3>
            <br />
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
                    <div class="form-group">
    
    
    <div style="overflow: scroll">
		<asp:GridView ID="GridData" OnRowCommand="GridData_RowCommand" AutoGenerateColumns="true" runat="server" CssClass="table text-primary">
			<Columns>
				<asp:TemplateField HeaderText="Write Exam">
					<ItemTemplate>
						<asp:LinkButton ID="LbPath" runat="server" Text="Write Exam" CommandArgument='<%#Eval("id")+ ";" +Eval("VacancyId")+ ";" + Eval("Status")%>'></asp:LinkButton>
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


