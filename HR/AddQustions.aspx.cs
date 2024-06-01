using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HR_AddQustions : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //Random r = new Random();
            //txtQuestionId.Text = r.Next(1, 9999).ToString();
            bindddl();
        }

    }
    private void bindddl()
    {
        Conn = new SqlConnection(ConnString);
        cmd = new SqlCommand("select * from Department");
        cmd.CommandType = CommandType.Text;
        cmd.Connection = Conn;
        Conn.Open();
        ddlDepartment.DataSource = cmd.ExecuteReader();
        ddlDepartment.DataTextField = "Name";
        ddlDepartment.DataValueField = "id";
        ddlDepartment.DataBind();
        Conn.Close();
    }

    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        try
		{
			Conn = new SqlConnection(ConnString);
			cmd = new SqlCommand("select * from Questions where id='" + txtQuestionId.Text + "'", Conn);
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
				string qry = "insert into Questions values('" + txtQuestionId.Text + "','" + ddlDepartment.SelectedItem.Text + "','" + txtQuestion.Text + "','" + txt1stChoice.Text + "','" + txt2stChoice.Text + "','" + txt3stChoice.Text + "','" + txt4stChoice.Text + "','" + txtAnswer.Text + "','" + txtDescription.Text + "')";
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
