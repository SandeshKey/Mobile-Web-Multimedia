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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {



            showcourseDetails();
        }

        void showcourseDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                
                SqlCommand cmd = new SqlCommand("select * from Course where Course_Name='" + txtsearchcourse.Text.Trim()+ "';" , con);
                SqlDataReader da = cmd.ExecuteReader();
                if(da.HasRows)
                {
                    while(da.Read())
                    {
                        txtcoursename.Text = da.GetValue(1).ToString();
                        txtcontent.Text = da.GetValue(2).ToString();
                        txtprice.Text = da.GetValue(3).ToString();
                        txtlname.Text = da.GetValue(4).ToString();
                        txtcduration.Text = da.GetValue(5).ToString();
                        txtimage.Text = da.GetValue(6).ToString();
                        txtadded.Text = da.GetValue(7).ToString();
                        

                    }

                }
            }
            catch
            {

            }

        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
           try
            {
               
                    con.Open();
                SqlCommand cmd = new SqlCommand("update Course set Course_Name='" + txtcoursename.Text.Trim() + "', Course_content='" + txtcontent.Text.Trim() + "',Course_Price='" + txtprice.Text.Trim() + "',Lecturer_Name='" + txtlname.Text.Trim() + "',Class_Duration='" + txtcduration.Text.Trim() + "',Course_Image='" + txtimage.Text.Trim() + "',Added_By='" + txtadded.Text + "' where Course_Name='" + txtsearchcourse.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Course Informtation Updated Successfully')</script>");
            }
            catch
            {

            }

          

        }

        protected void deletbtn_Click(object sender, EventArgs e)
        {
            try { 
            con.Open();

            SqlCommand cmd = new SqlCommand("delete from Course where Course_Name='" + txtsearchcourse.Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('Course deleted Successfully')</script>");
        }
            catch
            {

            }

        }


    /* protected void Gvbind()
{


DataTable dtbl = new DataTable();
using (SqlConnection sqlCon = new SqlConnection(cs))
{
    sqlCon.Open();
    SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Course", sqlCon);
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
    grdCustomer.Rows[0].Cells[0].Text = "No Course found ..";
    grdCustomer.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
}
}
protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{

}

protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
{
if (e.CommandName.Equals("Add"))
{
    using (SqlConnection sqlCon = new SqlConnection(cs))
    {
        sqlCon.Open();
        string query = "INSERT INTO Course (Course_Name,Course_Price,Lecturer_Name,Class_Duration,Total_Students, Course_content) VALUES (@Course_Name,@Course_Price,@Lecturer_Name,@Class_Duration,@Total_Students,@Course_Content)";
        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
        sqlCmd.Parameters.AddWithValue("@Course_Name", (grdCustomer.FooterRow.FindControl("txtCNameF") as TextBox).Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Course_Price", (grdCustomer.FooterRow.FindControl("txtCPriceF") as TextBox).Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Lecturer_Name", (grdCustomer.FooterRow.FindControl("txtLNameF") as TextBox).Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Class_Duration", (grdCustomer.FooterRow.FindControl("txtCDurationF") as TextBox).Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Total_Students", (grdCustomer.FooterRow.FindControl("txtStdF") as TextBox).Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Course_Content", (grdCustomer.FooterRow.FindControl("txtContentF") as TextBox).Text.Trim());
        sqlCmd.ExecuteNonQuery();
        Gvbind();
        lblmessage.Text = "Course Added Successfully";
    }

}
}

protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
grdCustomer.EditIndex = -1;
Gvbind();
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
    string query = "UPDATE dbo.[Course] SET Course_Name=@Course_Name,Course_Price=@Course_Price,Lecturer_Name=@Lecturer_Name,Class_Duration=@Class_Duration,Total_Students=@Total_Students,Course_content=@Course_Content WHERE ID = @ID";
    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
    sqlCmd.Parameters.AddWithValue("@Course_Name", (grdCustomer.Rows[e.RowIndex].FindControl("txtCName") as TextBox).Text.Trim());
    sqlCmd.Parameters.AddWithValue("@Course_Price", (grdCustomer.Rows[e.RowIndex].FindControl("txtCPrice") as TextBox).Text.Trim());
    sqlCmd.Parameters.AddWithValue("@Lecturer_Name", (grdCustomer.Rows[e.RowIndex].FindControl("txtLName") as TextBox).Text.Trim());
    sqlCmd.Parameters.AddWithValue("@Class_Duration", (grdCustomer.Rows[e.RowIndex].FindControl("txtCDuration") as TextBox).Text.Trim());
    sqlCmd.Parameters.AddWithValue("@Total_Students", (grdCustomer.Rows[e.RowIndex].FindControl("txtStd") as TextBox).Text.Trim());
    sqlCmd.Parameters.AddWithValue("@Course_Content", (grdCustomer.Rows[e.RowIndex].FindControl("txtContent") as TextBox).Text.Trim());

    sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(grdCustomer.DataKeys[e.RowIndex].Value.ToString()));
    sqlCmd.ExecuteNonQuery();
    grdCustomer.EditIndex = -1;
    Gvbind();
    lblmessage.Text = "Selected Record Updated";

}
}*/
}
}