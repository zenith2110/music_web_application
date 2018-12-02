using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            LabelWelcome.Text +=Session["New"].ToString();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Login is Succesful');</script>");
        }
        else
            Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
    protected void Buttonweb_Click(object sender, EventArgs e)
    {
        Response.Redirect("CS.aspx");
    }
}