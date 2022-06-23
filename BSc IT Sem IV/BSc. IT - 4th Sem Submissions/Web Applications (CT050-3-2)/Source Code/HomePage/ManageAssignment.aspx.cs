using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace HomePage
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GvBind();
            }
        }
        protected void GvBind()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Assignment  ", sqlCon);
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
        protected void grdAssignment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdAssignment.EditIndex = -1;
            GvBind();
        }

        protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            grdAssignment.EditIndex = -1;
            GvBind();
        }

        protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdAssignment.EditIndex = e.NewEditIndex;
            GvBind();
        }

        protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                string query = "UPDATE Assignment SET Subject_Name=@Subject_Name,Hand_Out=@Hand_Out,Filename=@Filename WHERE ID = @ID";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Subject_Name", (grdAssignment.Rows[e.RowIndex].FindControl("txtSName") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Hand_Out", (grdAssignment.Rows[e.RowIndex].FindControl("txtdate") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Filename", (grdAssignment.Rows[e.RowIndex].FindControl("txtFile") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(grdAssignment.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                grdAssignment.EditIndex = -1;
                GvBind();
                lblmessage.Text = " Updated Sucessfully";

            }
        }
    }
}