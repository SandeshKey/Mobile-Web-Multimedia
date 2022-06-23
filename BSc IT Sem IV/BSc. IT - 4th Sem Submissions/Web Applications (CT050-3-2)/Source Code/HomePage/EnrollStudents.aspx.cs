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
    public partial class WebForm8 : System.Web.UI.Page
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

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from EnrollStudents", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    grdCustomer.DataSource = dr;
                    grdCustomer.DataBind();
                }
            }
        }
        protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCustomer.EditIndex = -1;
            Gvbind();
        }

        protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {
                using (SqlConnection sqlCon = new SqlConnection(cs))
                {
                    sqlCon.Open();
                    string query = "INSERT INTO EnrollStudents (Name,Email,Username,Course_Name) VALUES (@Name,@Email,@Username,@Course_Name)";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Name", (grdCustomer.FooterRow.FindControl("txt1") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", (grdCustomer.FooterRow.FindControl("txt2") as TextBox).Text.Trim());                
                    sqlCmd.Parameters.AddWithValue("@Username", (grdCustomer.FooterRow.FindControl("txt3") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Course_Name", (grdCustomer.FooterRow.FindControl("txt4") as TextBox).Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Gvbind();
                    lblmessage.Text = "User Added Successfully";
                }

            }
        }

        protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(cs))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM EnrollStudents WHERE ID = @ID";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(grdCustomer.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    Gvbind();
                    lblmessage.Text = "Selected Record Deleted";
                }
            }
            catch (Exception ex)
            {
                lblmessage.Text = "";
            }
        }

        protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCustomer.EditIndex = e.NewEditIndex;
            Gvbind();
        }

        protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(cs))
            {
                sqlCon.Open();
                string query = "UPDATE dbo.[EnrollStudents] SET Name=@Name,Email=@Email,Username=@Username,Course_Name=@Course_Name WHERE ID = @ID";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Name", (grdCustomer.Rows[e.RowIndex].FindControl("txtName") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", (grdCustomer.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());          
                sqlCmd.Parameters.AddWithValue("@Username", (grdCustomer.Rows[e.RowIndex].FindControl("txtUsername") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Course_Name", (grdCustomer.Rows[e.RowIndex].FindControl("txtCName") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(grdCustomer.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                grdCustomer.EditIndex = -1;
                Gvbind();
                lblmessage.Text = "Selected Record Updated";

            }
        }

       
    }
}