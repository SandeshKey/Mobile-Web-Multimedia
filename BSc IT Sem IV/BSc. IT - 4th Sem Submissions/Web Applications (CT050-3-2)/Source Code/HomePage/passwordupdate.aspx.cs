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
    public partial class passwordupdate : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                txtusername.Text = "" + Session["username"];
                txtpw.Text = "" + Session["password"];
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString))
            {
                try
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("update Register set Password='" + newpass.Text.Trim() +  "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txtpw.DataBind();
                    Response.Write("<script>alert('password Updated Successfully')</script>");
                }
                catch
                {

                }


            }
        }
    }
}