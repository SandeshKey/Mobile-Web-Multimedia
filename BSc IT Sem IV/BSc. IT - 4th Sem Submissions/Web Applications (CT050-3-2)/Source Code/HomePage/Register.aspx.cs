using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace HomePage
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RrgBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(con.State==System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cd = new SqlCommand("select count(*) from Register where Username ='" + txtusername.Text.Trim() + "';", con);
                int count = Convert.ToInt32(cd.ExecuteScalar().ToString());
                if (count > 0)
                {
                    Response.Write("<script>alert('user already exist')</script>");
                }
                else
                {
                     userimg.SaveAs(Server.MapPath("~/img/" + userimg.FileName));
                    string ins = "insert into [Register](Name,Email,Address,Username,Password,Type,User_image) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + txtusername.Text + "','" + txtpw.Text + "','" + "User" + "','" + userimg.FileName + "')";
                    SqlCommand cmd = new SqlCommand(ins, con);
                   
                    cmd.ExecuteNonQuery();
                    
                    Response.Write("<script>alert('user is registered successfully')</script>");
                    Response.Redirect("Login.aspx");
                }
                con.Close();

            } catch(Exception ex)
            {

            }
          
        }
       
      
    }
}