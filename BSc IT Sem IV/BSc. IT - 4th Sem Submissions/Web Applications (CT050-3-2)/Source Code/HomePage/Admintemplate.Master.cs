using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HomePage
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ausername"] != null)
            {
                aUsername.Visible = true;
                lnklogin.Visible = false;
                lnklogout.Visible = true;
                aUsername.Text = "" + Session["ausername"];
                uploadimage.Visible = true;
            }
            else
            {
                aUsername.Visible=false ;
                lnklogout.Visible = false;
                lnklogin.Visible = true;
                uploadimage.Visible = false;
            }
        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            aUsername.Visible = false;
            lnklogout.Visible = false;
            lnklogin.Visible = true;
            uploadimage.Visible = false;
            Response.Redirect("HomePage.aspx");

        }
    }
}