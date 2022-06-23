using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class adminprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ausername"] != null)
                {
                    showimage();
                    showDetails();
                }



            }
        }
        void showDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("select * from Register where Username='" + Session["ausername"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                name.Text = dt.Rows[0]["Name"].ToString();
                email.Text = dt.Rows[0]["Email"].ToString();
                address.Text = dt.Rows[0]["Address"].ToString();
                username.Text = dt.Rows[0]["Username"].ToString();
                txtpw.Text = dt.Rows[0]["Password"].ToString();
                Session["password"] = txtpw.Text;
                Label2.Text = dt.Rows[0]["Name"].ToString();
               
               
            }
            catch
            {

            }

        }
        void showimage()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
            con.Open();
            string s = "Select User_Image from Register where Username='" + Session["ausername"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            ListView2.DataSource = dt;
            ListView2.DataBind();
        
            con.Close();

        }

     

        protected void editbtn_Click1(object sender, EventArgs e)
        {
            try
            {

                con.Open();

                SqlCommand cmd = new SqlCommand("update Register set  Name='" + name.Text.Trim() + "', Email='" + email.Text.Trim() + "',Address='" + address.Text.Trim() + "',Username='" + username.Text.Trim() + "',Password='" + txtpw.Text.Trim() + "' where Username='" + username.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your information updated successfully')</script>");


            }
            catch (Exception ex)
            {

            }
        }
    }
}