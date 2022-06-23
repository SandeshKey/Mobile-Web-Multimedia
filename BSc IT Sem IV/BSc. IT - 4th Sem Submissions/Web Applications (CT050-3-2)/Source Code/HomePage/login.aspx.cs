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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void LogBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Register where Username = '" + txtusername.Text + "' and Password = '" + txtpw.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select Type from Register where Username = '" + txtusername.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString();
                Session["Type"] = type;
                if (type == "Admin")
                {
                    Session["ausername"] = txtusername.Text;
                    Response.Write("successful");
                    Response.Redirect("adminpanal.aspx");
                }
                else if (type == "User")
                {
                    Session["username"] = txtusername.Text;
                    Response.Redirect("HomePage.aspx");
                  
                }
            }
            else
            {

                Response.Redirect("Register.aspx");
            }
            con.Close();
        }
        protected void course()
        {
            SqlCommand cmd = new SqlCommand("select count(*) from Register where Username = '" + txtusername.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select Course_Name from EnrollStudents where Username = '" + txtusername.Text + "'", con);
                string titleA = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                Session["Python"] = titleA;
                if (titleA == "Python")
                {
                    Session["username"] = txtusername.Text;
                    Response.Redirect("Python.aspx");
                }
                else
                {
                    Response.Redirect("Enroll.aspx");
                }
                

            }  
        }

        protected void login()
        {
           
            SqlCommand cmd = new SqlCommand("select count(*) from Register where Username = '" + txtusername.Text + "' and Password = '" + txtpw.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select Type from Register where Username = '" + txtusername.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString();
                Session["Type"] = type;
                if (type == "User")
                {
                    
                    Session["username"] = txtusername.Text;
                    Response.Redirect("HomePage.aspx");
                }
               
            }
            else
            {

                Response.Redirect("Register.aspx");
            }
            con.Close();
        }
        
    }
}