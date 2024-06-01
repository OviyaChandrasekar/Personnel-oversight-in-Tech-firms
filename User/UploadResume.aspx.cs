using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Upload_Resume : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    Helper _helper = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUserEmail.Text = Session["UserID"].ToString();
    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        string FileExtension = System.IO.Path.GetExtension(FileUp.FileName);
        if (FileExtension == ".pdf" || FileExtension == ".doc" || FileExtension == ".docx")
        {
            if (FileUp.HasFile)
            {
                Conn = new SqlConnection(ConnString);
                Random _random = new Random();
                //string FileExtension = System.IO.Path.GetExtension(FileUp.FileName);
                string destdir = Server.MapPath("../Resume");
                string filename = Path.GetFileName(FileUp.PostedFile.FileName);
                string orgfilename = _random.Next(555, 6666666).ToString();
                string Destpath = Path.Combine(destdir, orgfilename + FileExtension);
                FileUp.PostedFile.SaveAs(Destpath);

                Conn.Open();
                string qry = "update Users set Resume='" + orgfilename + FileExtension + "',ResumeUpdatedate='" + DateTime.Now.ToShortDateString() + "' where  MailId='" + Session["UserID"].ToString() + "'";
                SqlCommand cmd2 = new SqlCommand(qry, Conn);
                cmd2.ExecuteNonQuery();
                lblMessage.Text = "Details Added Successfully";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                Conn.Close();

            }
        }

        else
        {
            lblMessage.Text = "File Type must be in PDF or DOC or DOCX";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }

    }
}