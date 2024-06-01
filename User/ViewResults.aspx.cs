using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class User_View_Results : System.Web.UI.Page
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
        string selectquery = "select * from [application] where appliedBy='" + Session["UserID"].ToString() + "'";
        Conn = new SqlConnection(ConnString);
        SqlDataAdapter da = new SqlDataAdapter(selectquery, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);

        GridData.DataSource = ds.Tables[0];
        GridData.DataBind();
    }
}