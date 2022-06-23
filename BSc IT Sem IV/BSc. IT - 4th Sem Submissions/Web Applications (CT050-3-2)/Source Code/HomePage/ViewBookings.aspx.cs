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
    public partial class WebForm9 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Gvbind();
            }
        }
        protected void Gvbind()
        {

            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(cs))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Enroll  ", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                grdCustomer.DataSource = dtbl;
                grdCustomer.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                grdCustomer.DataSource = dtbl;
                grdCustomer.DataBind();
                grdCustomer.Rows[0].Cells.Clear();
                grdCustomer.Rows[0].Cells.Add(new TableCell());
                grdCustomer.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                grdCustomer.Rows[0].Cells[0].Text = "No Bookings Found";
                grdCustomer.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void grdCustomer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
            foreach (GridViewRow gr in grdCustomer.Rows)
            {
                string sqlquery = "INSERT INTO EnrollStudents VALUES (@Name,@Email,@Username,@Course_Name)";
                SqlCommand sqlcom = new SqlCommand(sqlquery, con);
                sqlcom.Parameters.AddWithValue("@Name", gr.Cells[1].Text);
                sqlcom.Parameters.AddWithValue("@Email", gr.Cells[2].Text);
                sqlcom.Parameters.AddWithValue("@Username", gr.Cells[3].Text);
                sqlcom.Parameters.AddWithValue("@Course_Name", gr.Cells[4].Text);
                try
                {
                    using (SqlConnection sqlCon = new SqlConnection(cs))
                    {
                        sqlCon.Open();
                        string query = "DELETE FROM Enroll WHERE ID = @ID";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(grdCustomer.DataKeys[gr.RowIndex].Value.ToString()));
                        sqlCmd.ExecuteNonQuery();
                        Gvbind();
                        lblmessage.Text = "Approved successfully";
                    }
                }
                catch (Exception ex)
                {
                    lblmessage.Text = "";
                }
                con.Open();
                sqlcom.ExecuteNonQuery();
                con.Close();

            }
        }
    }
}