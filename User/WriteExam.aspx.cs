using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_WriteExam : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindData();
        }

    }
    private void BindData()
	{
		string selectquery = "select * from  [dbo].[application] where [Status]='Applied' and appliedBy='" + Session["UserID"].ToString() + "'";
		Conn = new SqlConnection(ConnString);
		SqlDataAdapter da = new SqlDataAdapter(selectquery, Conn);
		DataSet ds = new DataSet();
		da.Fill(ds);

		GridData.DataSource = ds.Tables[0];
		GridData.DataBind();
	}

    protected void GridData_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string getData = Convert.ToString(e.CommandArgument);
        string[] arg = new string[3];
        arg = getData.Split(';');

        string id = arg[0];
        string vaId = arg[1];

        string Status = arg[2];
        if (Status == "Applied")
        {
            Response.Redirect("../User/Exam.aspx?id=" + id + "&vId=" + vaId);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Already Exam Written.');</script>", false);
        }
    }
}