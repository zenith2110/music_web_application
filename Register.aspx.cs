using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where UserName='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("This User Already Exists");
            }

            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
            
            conn.Open();

            string insertQuery = "insert into UserData (ID, UserName, Email, Password, Region) values (@ID, @Uname, @email, @pass, @region)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@ID", newGuid.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@pass", TextBoxPass.Text);
            com.Parameters.AddWithValue("@region", DropDownListRegion.SelectedItem.ToString());

            com.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You have been Successfully Registered');</script>"); 

            conn.Close();
        }
        catch (Exception es)
        {
            Response.Write("Error: " + es.ToString());
        }
    }
}