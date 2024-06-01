using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HR_Change_Password : System.Web.UI.Page
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
        if (txtPassword.Text == txtCPassword.Text)
        {
            Conn = new SqlConnection(ConnString);

            Conn.Open();
            string qry = "update hrCreation set  Password ='" + txtPassword.Text + "' where Id='" + Session["UserID"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(qry, Conn);
            cmd2.ExecuteNonQuery();
            lblMessage.Text = "Details Updated Successfully";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            Conn.Close();
        }
        else
        {
            lblMessage.Text = "Password not match";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }

    }
}