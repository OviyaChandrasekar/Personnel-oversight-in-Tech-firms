<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
         <section class="about py-5">
        <div class="container py-md-5">
           
             <h3 class="tittle-wthree text-center">Admin Login</h3>
          
            <div class="row">
                <div class="col-lg-6 contact-right-wthree-info login">
                    <h5 class="text-center mb-4"></h5>
              
                        <div class="form-group mt-4">
                            <label>Name</label>

                            <%--<input type="text"  id="validationDefault01" placeholder="" required="">--%>

                            <asp:TextBox runat="server" class="form-control" />  



                        </div>
                  

                        <div class="form-group mt-4">


                            <label class="mb-2">Password</label>

                            <asp:TextBox runat="server" class="form-control"  />
                         
                        </div>
            
                        <%--<button type="submit" class="btn btn-primary submit mb-4">Submit </button>--%>
                    <asp:Button Text="Login" runat="server" class="btn btn-primary submit mb-4" />

                

                </div>
            </div>

           
        </div>
    </section>


</asp:Content>

