using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace HomePage
{
    
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Register where Username = '" + txtusername.Text + "' and Password = '" + txtpw.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (count > 0)
            {
                Response.Write("<script>alert('ayoo ayoo')</script>");
                SqlCommand cmdType = new SqlCommand("select Type from Register where Username = '" + txtusername.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString();
                Session["Type"] = type;
                if (type == "Admin")
                {
                   Session["ausername"] = txtusername.Text;
                    Response.Redirect("adminpanal.aspx");
                  
                }
                else 
                {
                    Session["username"] = txtusername.Text;
                    Response.Redirect("HomePage.aspx");
                }
            }
            else
            {

                Response.Write("<script>alert('admin is login unsuccessfully')</script>");
            }
            con.Close();
        }
    }
}