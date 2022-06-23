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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            txtusname.Text = "" + Session["username"];
            SqlDataAdapter dr = new SqlDataAdapter("select Course_Name from Course",con);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            if(!IsPostBack)
            {
                choosecourse.DataSource = dt;
                choosecourse.DataValueField = "Course_Name";
                choosecourse.DataBind();
               
            }
          

        }

        protected void EnrollBtn_Click(object sender, EventArgs e)
        {

            string ins = "insert into [Enroll](Name,Email,Username,Course_Name,Cardholder_Name,Card_Number,ExpMonth,ExpYear_Duration,CVV) values('" + txtname.Text + "','" + txtemail.Text + "','" +txtusname.Text.Trim()+"','"  + choosecourse.SelectedItem.ToString()+ "','" + txtchldr.Text + "','" + txtcnum.Text +  "','" + txtexpm.Text + "','" + txtexpy.Text+ "','" + txtcvv.Text + "')";
            
            SqlCommand cmd = new SqlCommand(ins, con);
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is enrolled successfully')</script>");
            txtname.Text = "";
            txtemail.Text = "";
            txtusname.Text = "";
            txtexpy.Text = "";
            txtchldr.Text = "";
            txtcnum.Text = "";
            txtexpm.Text = "";
            txtexpy.Text = "";
            txtcvv.Text = "";
        }

        protected void choosecourse_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}