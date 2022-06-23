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
    public partial class content : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
            labcourse.Text = "" + Request.QueryString["course"];
            if (Request.QueryString["course"]!=null)
            {
                con.Open();
                string s = "select * from Course where Course_Name='" + Request.QueryString["course"] + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet dt = new DataSet();
                da.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();
                con.Close();
            }
            if (!IsPostBack)
            {
                
                if (Request.QueryString["course"] != null)
                {
                    Gvbind();
                }

                



            }

        }
        protected void Gvbind()
        {
            string constr = ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString;
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Assignment where Course_Name='"+Request.QueryString["course"]+  "'" , sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                grdAssignment.DataSource = dtbl;
                grdAssignment.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                grdAssignment.DataSource = dtbl;
                grdAssignment.DataBind();
                grdAssignment.Rows[0].Cells.Clear();
                grdAssignment.Rows[0].Cells.Add(new TableCell());
                grdAssignment.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                grdAssignment.Rows[0].Cells[0].Text = "No Assignment Found";
                grdAssignment.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString;

            int ID = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, fileType;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Filename, Assignment, Type from Assignment where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", ID);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Assignment"];
                        fileType = sdr["Type"].ToString();
                        fileName = sdr["Filename"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = fileType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

       
    }
}