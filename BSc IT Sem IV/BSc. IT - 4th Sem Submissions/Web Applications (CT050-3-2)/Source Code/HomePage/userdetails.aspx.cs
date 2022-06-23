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
    public partial class userdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }




        protected void searchbtn_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                showimage();
                SqlCommand cmd = new SqlCommand("select * from Register where Username='" + txtsearname.Text.Trim() + "';", con);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
               
                        labtitle.Text = dt.Rows[0]["Name"].ToString();
                        labemail.Text = dt.Rows[0]["Email"].ToString();
                        labusername.Text = dt.Rows[0]["Username"].ToString();
                        labaddress.Text = dt.Rows[0]["Address"].ToString();

              
                  
            }
            catch
            {

            }


        }
        void showimage()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
            con.Open();
            string s = "Select User_Image from Register where Username='" + txtsearname.Text+ "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            ListView2.DataSource = dt;
            ListView2.DataBind();
            con.Close();

        }
    }
}