using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HR_Add_Department : System.Web.UI.Page
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
        try
        {
            Conn = new SqlConnection(ConnString);
            cmd = new SqlCommand("select * from Department where name='" + txtName.Text + "'", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblMessage.Text = "Department already exist !!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
            }
            else
            {
                dr.Close();
                Conn.Close();
                Conn.Open();
                string qry = "insert into Department(Name,Description) values('" + txtName.Text + "','" + txtDescription.Text + "')";
                SqlCommand cmd2 = new SqlCommand(qry, Conn);
                cmd2.ExecuteNonQuery();
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
    }
}