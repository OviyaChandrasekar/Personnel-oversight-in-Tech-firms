using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

//protected void Button1_Click(object sender, EventArgs e)
//    {
//              if (ddlLoginAs.SelectedValue == "1")
//        {
//            if (string.IsNullOrEmpty(TextBox1.Text) | string.IsNullOrEmpty(TextBox2.Text))
//            {
//                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Enter Username and Passsword Properly to Proceed.');", true);
//                return;
//            }
//            if (TextBox1.Text.ToLower() == "admin" | TextBox2.Text.ToLower() == "admin")
//            {
//                Response.Redirect("Admin/Home.aspx");
//            }
//            else
//            {
//                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid Authentication.');", true);
//            }
//        }

//        else if (ddlLoginAs.SelectedValue == "2")
//        {

//            Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

//            cmd = new SqlCommand("select * from [hrCreation] where id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", Conn);
//            Conn.Open();
//            dr = cmd.ExecuteReader();

//            if (dr.Read())
//            {

//                Session["UserID"] = TextBox1.Text;
//                Response.Redirect("~/HR/Home.aspx");

//            }
//            else
//            {
//                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);
//            }


//        }
//              else if (ddlLoginAs.SelectedValue == "3")
//              {


//                  Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

//                  cmd = new SqlCommand("select * from users where mailid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", Conn);
//                  Conn.Open();
//                  dr = cmd.ExecuteReader();

//                  if (dr.Read())
//                  {

//                      Session["UserID"] = TextBox1.Text;
//                      Response.Redirect("~/User/Home.aspx");

//                  }
//                  else
//                  {
//                      ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);
//                  }

//              }
//    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtUN.Text) | string.IsNullOrEmpty(txtPwd.Text))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Enter Username and Passsword Properly to Proceed.');", true);
            return;
        }
        if (txtUN.Text.ToLower() == "admin" | txtPwd.Text.ToLower() == "admin")
        {
            Response.Redirect("Admin/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid Authentication.');", true);
        }
    }
}