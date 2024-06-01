using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class User_UseDetailsr : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;

    Helper _helper = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                lblMailId.Text = Session["UserID"].ToString();
                getData(Session["UserID"].ToString());
            }
        }
        catch (Exception)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
    private void getData(string Mail)
    {
        DataSet ds = new DataSet();
        ds = _helper.Getdatas("Select * from users where MailId='" + Session["UserID"].ToString() + "'");
        txtFirstName.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
        txtLastName.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
        txtPassword.Text = ds.Tables[0].Rows[0]["Password"].ToString();

        txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
        ddlcount.Text = ds.Tables[0].Rows[0]["Country"].ToString();
        txtAreaCode.Text = ds.Tables[0].Rows[0]["AreaCode"].ToString();
        txtMobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
        txtLanguageKnown.Text = ds.Tables[0].Rows[0]["LanguageKnown"].ToString();
        rdbGender.SelectedItem.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
        hypResume.NavigateUrl = "../Resume/" + ds.Tables[0].Rows[0]["resume"].ToString();
    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);

            Conn.Open();
            string qry = "update users set FirstName='" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',Gender='" + rdbGender.SelectedItem.Text + "',Address='" + txtAddress.Text + "',Country='" + ddlcount.Text + "',AreaCode='" + txtAreaCode.Text + "',Mobile='" + txtMobile.Text + "',LanguageKnown='" + txtLanguageKnown.Text + "' where mailid='" + lblMailId.Text + "'";
            SqlCommand cmd2 = new SqlCommand(qry, Conn);
            cmd2.ExecuteNonQuery();
            lblMessage.Text = "Details Updated Successfully";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            Conn.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.Replace("'", "");
            lblMessage.ForeColor = System.Drawing.Color.Red;

        }
        finally { Conn.Close(); }
    }
}