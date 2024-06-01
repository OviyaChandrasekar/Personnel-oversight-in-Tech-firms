using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;

public class Helper
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    public Helper()
    {
        Conn = new SqlConnection(ConnString);
    }

    public DataSet Getdatas(string query)
    {
        Conn = new SqlConnection(ConnString);
        Conn.Open();
        SqlDataAdapter adp = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        return ds;
    }


    public string sendMail(string ToAddress, string Subject, string Body)
    {
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("manismtp@gmail.com");
            mail.To.Add(ToAddress);
            mail.Subject = Subject;
            mail.Body = Body;
            mail.IsBodyHtml = true;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("manismtp@gmail.com", "manirathinam");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            return "Mail Send";
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }
}
