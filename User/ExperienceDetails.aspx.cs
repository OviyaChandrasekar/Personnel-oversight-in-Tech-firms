﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Experience_Details : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblUserEmail.Text = Session["UserID"].ToString();
        }
        catch (Exception)
        {
            Response.Redirect("~/Home.aspx");
        }

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);
            Conn.Open();
            string qry = "insert into ExperienceDetails(mailId,CompanyDetails,Experience,PlatForm) values('" + lblUserEmail.Text + "','" + txtCompanyName.Text + "','" + txtExperience.Text + "','" + txtPlatForm.Text + "')";
            SqlCommand cmd2 = new SqlCommand(qry, Conn);
            cmd2.ExecuteNonQuery();


            lblMessage.Text = "Details Added Successfully";
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