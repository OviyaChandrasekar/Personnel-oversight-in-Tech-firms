using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Registration : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    Helper _helper = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
       

		try
		{
			Conn = new SqlConnection(ConnString);
			cmd = new SqlCommand("select * from Users where MailId='" + txtEmail.Text + "'", Conn);
			Conn.Open();
			dr = cmd.ExecuteReader();

			if (dr.Read())
			{
				lblMessage.Text = "Mail Id already exist !!";
				lblMessage.ForeColor = System.Drawing.Color.Red;
				dr.Close();
			}
			else
			{
				dr.Close();
				Conn.Close();
				Conn.Open();
				string qry = "insert into users(MailId,Password) values('" + txtEmail.Text + "','" + txtPassword.Text + "')";
				SqlCommand cmd2 = new SqlCommand(qry, Conn);
				cmd2.ExecuteNonQuery();

				_helper.sendMail(txtEmail.Text, "Password Verification", "<table><tr><td>User Email</td><td>" + txtEmail.Text + "</td></tr><tr><td>Password</td><td>" + txtPassword.Text + "</td></tr></table>");

				lblMessage.Text = "Details Added Successfully";
				lblMessage.ForeColor = System.Drawing.Color.Green;
				Conn.Close();
			}
		}
		catch (Exception ex)
		{
			lblMessage.Text = ex.Message.Replace("'", "");
			lblMessage.ForeColor = System.Drawing.Color.Red;
		}
		finally { Conn.Close(); }

	}
    
}