using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
        conn.Open();
        string updateQuery = "update UserData set Email='" + TextBoxEmailupdate.Text + "', Password='" + TextBoxPassupdate.Text + "', Region='" + DropDownListRegionUpdate.SelectedItem.ToString() + "' where UserName='" + TextBoxUNupdate.Text + "'";
        SqlCommand cmd = new SqlCommand(updateQuery, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Details are Successfully Updated');</script>");
        
    }

    
}