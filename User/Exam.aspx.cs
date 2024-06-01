using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Exam : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    Helper _helper = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lblUserEmail.Text = Session["UserID"].ToString();
            GetData(Request.QueryString["vId"].ToString());
        }
    }
    protected void GetData(string id)
    {
        DataSet ds = new DataSet();
        ds = _helper.Getdatas("select * From Vacancy where Id=" + id);

        string dept = ds.Tables[0].Rows[0]["Department"].ToString();

        DataSet ds1 = new DataSet();
        ds1 = _helper.Getdatas("select top 5 * from Questions where Department='" + dept + "'");

        txt1stQuestion.Text = ds1.Tables[0].Rows[0]["Question"].ToString();
        txt2stQuestion.Text = ds1.Tables[0].Rows[1]["Question"].ToString();
        txt3stQuestion.Text = ds1.Tables[0].Rows[2]["Question"].ToString();
        txt4stQuestion.Text = ds1.Tables[0].Rows[3]["Question"].ToString();
        txt5stQuestion.Text = ds1.Tables[0].Rows[4]["Question"].ToString();


        rdb11stAnswer.Text = ds1.Tables[0].Rows[0]["1stchoice"].ToString();
        rdb12stAnswer.Text = ds1.Tables[0].Rows[0]["2ndchoice"].ToString();
        rdb13stAnswer.Text = ds1.Tables[0].Rows[0]["3rdchoice"].ToString();
        rdb14stAnswer.Text = ds1.Tables[0].Rows[0]["4thchoice"].ToString();

        rdb21stAnswer.Text = ds1.Tables[0].Rows[1]["1stchoice"].ToString();
        rdb22stAnswer.Text = ds1.Tables[0].Rows[1]["2ndchoice"].ToString();
        rdb23stAnswer.Text = ds1.Tables[0].Rows[1]["3rdchoice"].ToString();
        rdb24stAnswer.Text = ds1.Tables[0].Rows[1]["4thchoice"].ToString();

        rdb31stAnswer.Text = ds1.Tables[0].Rows[2]["1stchoice"].ToString();
        rdb32stAnswer.Text = ds1.Tables[0].Rows[2]["2ndchoice"].ToString();
        rdb33stAnswer.Text = ds1.Tables[0].Rows[2]["3rdchoice"].ToString();
        rdb34stAnswer.Text = ds1.Tables[0].Rows[2]["4thchoice"].ToString();

        rdb41stAnswer.Text = ds1.Tables[0].Rows[3]["1stchoice"].ToString();
        rdb42stAnswer.Text = ds1.Tables[0].Rows[3]["2ndchoice"].ToString();
        rdb43stAnswer.Text = ds1.Tables[0].Rows[3]["3rdchoice"].ToString();
        rdb44stAnswer.Text = ds1.Tables[0].Rows[3]["4thchoice"].ToString();

        rdb51stAnswer.Text = ds1.Tables[0].Rows[4]["1stchoice"].ToString();
        rdb52stAnswer.Text = ds1.Tables[0].Rows[4]["2ndchoice"].ToString();
        rdb53stAnswer.Text = ds1.Tables[0].Rows[4]["3rdchoice"].ToString();
        rdb54stAnswer.Text = ds1.Tables[0].Rows[4]["4thchoice"].ToString();

        hid1.Text = ds1.Tables[0].Rows[0]["Answer"].ToString();
        hid2.Text = ds1.Tables[0].Rows[1]["Answer"].ToString();
        hid3.Text = ds1.Tables[0].Rows[2]["Answer"].ToString();
        hid4.Text = ds1.Tables[0].Rows[3]["Answer"].ToString();
        hid5.Text = ds1.Tables[0].Rows[4]["Answer"].ToString();


    }

    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(anshid1.Text) || string.IsNullOrEmpty(anshid2.Text) || string.IsNullOrEmpty(anshid3.Text) || string.IsNullOrEmpty(anshid4.Text) || string.IsNullOrEmpty(anshid5.Text))
        {
            lblMessage.Text = "Answer All the Questions.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }
        int count = 0;
        if (hid1.Text == anshid1.Text)
        {
            count += 1;
        }
        if (hid2.Text == anshid2.Text)
        {
            count += 1;
        }
        if (hid3.Text == anshid3.Text)
        {
            count += 1;
        }
        if (hid4.Text == anshid4.Text)
        {
            count += 1;
        }
        if (hid5.Text == anshid5.Text)
        {
            count += 1;
        }
        try
        {
            Conn = new SqlConnection(ConnString);

            Conn.Open();
            string qry = "update application set  Marks ='" + count + "',Status ='Completed' where Id='" + Request.QueryString["id"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(qry, Conn);

            _helper.sendMail(lblUserEmail.Text, "Exam Result", "<table><tr><td>User Email</td><td>" + lblUserEmail.Text + "</td></tr><tr><td>Result</td><td>" + count + "</td></tr> <tr><td colspan=\"2\">If u get 4 or above please contact consern person. </td></tr></table>");
            cmd2.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Thanks for your patience'); window.location='" + Request.ApplicationPath + "User/Home.aspx';", true);
            //ScriptManager.RegisterStartupScript(this, GetType(), "../User/Home.aspx", "alert('Thanks for your patience');", true);
            Conn.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.Replace("'", "");
            lblMessage.ForeColor = System.Drawing.Color.Red;

        }
        finally { Conn.Close(); }
    }




    #region RDB

    protected void rdb11stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb11stAnswer.Checked == true)
        {
            rdb12stAnswer.Checked = false;
            rdb13stAnswer.Checked = false;
            rdb14stAnswer.Checked = false;
            anshid1.Text = rdb11stAnswer.Text;
        }

    }
    protected void rdb14stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb14stAnswer.Checked == true)
        {
            rdb11stAnswer.Checked = false;
            rdb12stAnswer.Checked = false;
            rdb13stAnswer.Checked = false;
            anshid1.Text = rdb14stAnswer.Text;

        }
    }
    protected void rdb13stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb13stAnswer.Checked == true)
        {
            rdb11stAnswer.Checked = false;
            rdb12stAnswer.Checked = false;
            rdb14stAnswer.Checked = false;
            anshid1.Text = rdb13stAnswer.Text;

        }
    }
    protected void rdb12stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb12stAnswer.Checked == true)
        {
            rdb11stAnswer.Checked = false;
            rdb13stAnswer.Checked = false;
            rdb14stAnswer.Checked = false;
            anshid1.Text = rdb12stAnswer.Text;

        }
    }

    protected void rdb21stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb21stAnswer.Checked == true)
        {
            rdb22stAnswer.Checked = false;
            rdb23stAnswer.Checked = false;
            rdb24stAnswer.Checked = false;
            anshid2.Text = rdb21stAnswer.Text;
        }

    }
    protected void rdb24stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb24stAnswer.Checked == true)
        {
            rdb21stAnswer.Checked = false;
            rdb22stAnswer.Checked = false;
            rdb23stAnswer.Checked = false;
            anshid2.Text = rdb24stAnswer.Text;

        }
    }
    protected void rdb23stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb23stAnswer.Checked == true)
        {
            rdb21stAnswer.Checked = false;
            rdb22stAnswer.Checked = false;
            rdb24stAnswer.Checked = false;
            anshid2.Text = rdb23stAnswer.Text;

        }
    }
    protected void rdb22stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb22stAnswer.Checked == true)
        {
            rdb21stAnswer.Checked = false;
            rdb23stAnswer.Checked = false;
            rdb24stAnswer.Checked = false;
            anshid2.Text = rdb22stAnswer.Text;

        }
    }

    protected void rdb31stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb31stAnswer.Checked == true)
        {
            rdb32stAnswer.Checked = false;
            rdb33stAnswer.Checked = false;
            rdb34stAnswer.Checked = false;
            anshid3.Text = rdb31stAnswer.Text;
        }

    }
    protected void rdb34stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb34stAnswer.Checked == true)
        {
            rdb31stAnswer.Checked = false;
            rdb32stAnswer.Checked = false;
            rdb33stAnswer.Checked = false;
            anshid3.Text = rdb34stAnswer.Text;

        }
    }
    protected void rdb33stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb33stAnswer.Checked == true)
        {
            rdb31stAnswer.Checked = false;
            rdb32stAnswer.Checked = false;
            rdb34stAnswer.Checked = false;
            anshid3.Text = rdb33stAnswer.Text;

        }
    }
    protected void rdb32stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb32stAnswer.Checked == true)
        {
            rdb31stAnswer.Checked = false;
            rdb33stAnswer.Checked = false;
            rdb34stAnswer.Checked = false;
            anshid3.Text = rdb32stAnswer.Text;

        }
    }

    protected void rdb41stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb41stAnswer.Checked == true)
        {
            rdb42stAnswer.Checked = false;
            rdb43stAnswer.Checked = false;
            rdb44stAnswer.Checked = false;
            anshid4.Text = rdb41stAnswer.Text;
        }

    }
    protected void rdb44stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb44stAnswer.Checked == true)
        {
            rdb41stAnswer.Checked = false;
            rdb42stAnswer.Checked = false;
            rdb43stAnswer.Checked = false;
            anshid4.Text = rdb44stAnswer.Text;

        }
    }
    protected void rdb43stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb43stAnswer.Checked == true)
        {
            rdb41stAnswer.Checked = false;
            rdb42stAnswer.Checked = false;
            rdb44stAnswer.Checked = false;
            anshid4.Text = rdb43stAnswer.Text;

        }
    }
    protected void rdb42stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb42stAnswer.Checked == true)
        {
            rdb41stAnswer.Checked = false;
            rdb43stAnswer.Checked = false;
            rdb44stAnswer.Checked = false;
            anshid4.Text = rdb42stAnswer.Text;

        }
    }

    protected void rdb51stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb51stAnswer.Checked == true)
        {
            rdb52stAnswer.Checked = false;
            rdb53stAnswer.Checked = false;
            rdb54stAnswer.Checked = false;
            anshid5.Text = rdb51stAnswer.Text;
        }

    }
    protected void rdb54stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb54stAnswer.Checked == true)
        {
            rdb51stAnswer.Checked = false;
            rdb52stAnswer.Checked = false;
            rdb53stAnswer.Checked = false;
            anshid5.Text = rdb54stAnswer.Text;

        }
    }
    protected void rdb53stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb53stAnswer.Checked == true)
        {
            rdb51stAnswer.Checked = false;
            rdb52stAnswer.Checked = false;
            rdb54stAnswer.Checked = false;
            anshid5.Text = rdb53stAnswer.Text;

        }
    }
    protected void rdb52stAnswer_CheckedChanged(object sender, EventArgs e)
    {
        if (rdb52stAnswer.Checked == true)
        {
            rdb51stAnswer.Checked = false;
            rdb53stAnswer.Checked = false;
            rdb54stAnswer.Checked = false;
            anshid5.Text = rdb52stAnswer.Text;

        }
    }
    #endregion
}