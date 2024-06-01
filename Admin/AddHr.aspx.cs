using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Hr : System.Web.UI.Page
{
    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random r = new Random();
            txtId.Text = r.Next(1, 9999).ToString();
        }

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);
            cmd = new SqlCommand("select * from Hrcreation where id='" + txtId.Text + "'", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblMessage.Text = "Id already exist !!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
            }
            else
            {
                dr.Close();
                Conn.Close();
                Conn.Open();
                string qry = "insert into Hrcreation(id,name,mail,Password,Mobile,DOB,City,State,Country) values('" + txtId.Text + "','" + txtName.Text + "','" + txtMail.Text + "','" + txtPwd.Text + "','" + txtMobile.Text + "','" + txtDOB.Text + "','" + ddltxtcity.Text + "','" + ddlstate.Text + "','" + ddlcount.Text + "')";
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
        finally { Conn.Close(); }

    }
}