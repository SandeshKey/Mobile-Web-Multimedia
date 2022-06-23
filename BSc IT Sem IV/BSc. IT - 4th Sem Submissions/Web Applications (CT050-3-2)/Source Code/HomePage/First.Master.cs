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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"] != null)
                {
                    lnkprofile.Visible = true;
                    Lnklogin.Visible = false;
                    Lnklogout.Visible = true;
                    Lnkreg.Visible = false;
                    uploadimage.Visible = true;
                    Lnkcourse.Visible = true;
                    LabUsername.Text = "" + Session["username"];
                    showprofile();

                }
                else
                {

                    lnkprofile.Visible = false;
                    Lnklogin.Visible = true;
                    Lnklogout.Visible = false;
                    Lnkreg.Visible = true;
                    uploadimage.Visible = false;
                    Lnkcourse.Visible = false;
                   
                }

            }
            catch(Exception ex)
            {

            }
          
        }
        public Label labuser
        {
            get
            {
                return this.LabUsername;
            }
            
        }
        public LinkButton linkreg
        {
            get
            {
                return this.Lnkreg;
            }
        }
        public LinkButton linklogin
        {
            get
            {
                return this.Lnklogin;
            }
        }
        public LinkButton linklogout
        {
            get
            {
                return this.Lnklogin;
            }
        }
       

        public LinkButton lnkprofile
        {
            get
            {
                return this.Lnkprofile;
            }
        }

        protected void Lnkprofile_Click(object sender, EventArgs e)
        {
            Session["username"]= LabUsername.Text;
        }

       

        protected void Lnkenroll_Click(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Response.Redirect("Enroll.aspx");

            }
            else
            {
                Response.Write("<script>alert('You need to login first')</script>");

                Response.Redirect("Login.aspx");
            }
           
        }

        protected void Lnklogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            lnkprofile.Visible = false;
            Lnklogin.Visible = true;
            Lnklogout.Visible = false;
            Lnkreg.Visible = true;
            uploadimage.Visible = false;
            Lnkcourse.Visible = false;
            Response.Redirect("HomePage.aspx");
        }

        void showprofile()
        {
            con.Open();
            string s = "select User_Image from Register where Username='" + Session["username"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            uploadimage.DataSource = dt;
            uploadimage.DataBind();
            con.Close();
        }
    }
}