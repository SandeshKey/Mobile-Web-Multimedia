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
    public partial class courseadd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {

            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cd = new SqlCommand("select count(*) from Course where Course_Name ='" + txtcname.Text.Trim() + "';", con);
                int count = Convert.ToInt32(cd.ExecuteScalar().ToString());
                if (count > 0)
                {
                    Response.Write("<script>alert('course already exist')</script>");
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));
                    string i = "insert into [Course](Course_Name,Course_content,Course_Price,Lecturer_Name,Class_Duration,Course_Image,Added_by) values('" + txtcname.Text + "','" + txtccontent.Text + "','" + txtcprice.Text + "','" + txtlname.Text + "','" + txtcduration.Text + "','" + FileUpload1.FileName + "','" + Session["ausername"] + "')";
                    SqlCommand c = new SqlCommand(i, con);
                   
                    c.ExecuteNonQuery();
                    
                    Response.Write("<script>alert('Course Added Successfully')</script>");
                    txtcname.Text = "";
                    txtccontent.Text = "";
                    txtcprice.Text = "";
                    txtlname.Text = "";
                    txtcduration.Text = "";
                }
                con.Close();

            }
            catch (Exception ex)
            {

            }

          /*  string ins = "insert into [Course](Course_Name,Course_content,Course_Price,Lecturer_Name,Class_Duration,Course_Image,Added_by) values('" + txtcname.Text + "','" + txtccontent.Text + "','" + txtcprice.Text + "','" + txtlname.Text + "','" + txtcduration.Text + "','" +FileUpload1.FileName+ "','"+Session["ausername"]+"')";
            SqlCommand cmd = new SqlCommand(ins, con);
            con.Open();
            cmd.ExecuteNonQuery();
            FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));
            con.Close();
            Response.Write("<script>alert('Course Added Successfully')</script>");
            txtcname.Text = "";
            txtccontent.Text = "";
            txtcprice.Text = "";
            txtlname.Text = "";
            txtcduration.Text = "";*/
            
        }

       

        protected void viewcourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourses.aspx");
        }
    }
}