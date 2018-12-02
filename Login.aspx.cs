using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from UserData where UserName='" + TextBoxLUN.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ",""));
        conn.Close();

        if(temp == 1)
        {
            
            conn.Open();
            string checkPassQuery = "select password from UserData where UserName ='" + TextBoxLUN.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPassQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

            if (password == TextBoxLPass.Text)
            {
                Session["New"] = TextBoxLUN.Text;
                
                Response.Redirect("UserPage.aspx");
                
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You have entered Wrong Password');</script>");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid User');</script>");
        }
       
    }
}