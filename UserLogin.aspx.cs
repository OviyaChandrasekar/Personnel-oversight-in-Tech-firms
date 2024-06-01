using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Login : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        cmd = new SqlCommand("select * from users where mailid='" + txtUN.Text + "' and password='" + txtPwd.Text + "'", Conn);
        Conn.Open();
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            Session["UserID"] = txtUN.Text;
            Response.Redirect("~/User/Home.aspx");

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);
        }
    }
}