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
    public partial class mycourse : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    showenroll();
                    Session["mycourse"] = "Course_Name";

                }
            }
           
        }
       
         void showenroll()
         {
            con.Open();
            string s = "select Course_Name from EnrollStudents where Username='"+Session["username"]+"'";
            SqlDataAdapter da = new SqlDataAdapter(s,con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            con.Close();
           
         }

        

       
    }

}