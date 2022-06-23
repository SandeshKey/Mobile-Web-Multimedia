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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cd = new SqlCommand("select count(*) from Register where Username ='" + txtaname.Text.Trim() + "';", con);
                int count = Convert.ToInt32(cd.ExecuteScalar().ToString());
                if (count > 0)
                {
                    Response.Write("<script>alert('user already exist')</script>");
                }
                else
                {
                    string put = "insert into [Register](Name,Email,Address,Username,Password,Type,User_image) values('" + txtaname.Text + "','" + txtaemail.Text + "','" + txtaaddress.Text + "','" + txtausername.Text + "','" + txtapw.Text + "','" + "Admin" + "','" + auserimg.FileName + "')";
                    SqlCommand cmd = new SqlCommand(put, con);
                   
                    cmd.ExecuteNonQuery();
                   
                    Response.Write("<script>alert('admin is registered successfully')</script>");
                    Response.Redirect("AdminLogin.aspx");
                    Response.Redirect("Login.aspx");
                }
                con.Close();

            }
            catch (Exception ex)
            {

            }
           
        }
    }
}