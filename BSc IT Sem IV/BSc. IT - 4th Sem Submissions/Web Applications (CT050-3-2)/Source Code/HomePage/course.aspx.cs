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
    public partial class course : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string s = "select * from Course";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            con.Close();
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}