using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Apply : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    Helper _helper = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblVacancyId.Text = Request.QueryString["id"].ToString();
        if (!IsPostBack)
        {
            Getdatas(Request.QueryString["id"].ToString());
        }

    }
    protected void Getdatas(string query)
    {
        DataSet ds = new DataSet();
        ds = _helper.Getdatas("select * from [dbo].[Vacancy] where id=" + query);

        lblDepartment.Text = ds.Tables[0].Rows[0]["Department"].ToString();
        lblPost.Text = ds.Tables[0].Rows[0]["PostName"].ToString();
        //lblCompanyName.Text = ds.Tables[0].Rows[0]["user_name"].ToString();

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);
            cmd = new SqlCommand("select * from application where appliedBy='" + Session["UserID"].ToString() + "' and VacancyId='" + lblVacancyId.Text + "'", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblMessage.Text = "Already Applied For this post!!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
            }
            else
            {
                dr.Close();
                Conn.Close();
                Conn.Open();
                string qry = "insert into application(appliedBy,VacancyId,Status) values('" + Session["UserID"].ToString() + "','" + lblVacancyId.Text + "','Applied')";
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