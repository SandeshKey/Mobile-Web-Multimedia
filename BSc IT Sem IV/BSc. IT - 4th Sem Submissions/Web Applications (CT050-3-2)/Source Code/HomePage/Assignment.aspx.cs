using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace HomePage
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);

                string fileType = FileUpload1.PostedFile.ContentType;

                using (Stream fs = FileUpload1.PostedFile.InputStream)

                {

                    using (BinaryReader br = new BinaryReader(fs))

                    {

                        byte[] bytes = br.ReadBytes((Int32)fs.Length);

                        string constr = ConfigurationManager.ConnectionStrings["AspNetConn"].ConnectionString;

                        using (SqlConnection con = new SqlConnection(constr))

                        {

                            string query = "insert into Assignment values (@Subject_Name,@Hand_Out, @Filename,@Type,@Assignment)";

                            using (SqlCommand cmd = new SqlCommand(query))

                            {

                                cmd.Connection = con;
                                cmd.Parameters.AddWithValue("@Subject_Name", txtname.Text);
                                cmd.Parameters.AddWithValue("@Hand_Out", txtdate.Text);
                                cmd.Parameters.AddWithValue("@Filename", filename);
                                cmd.Parameters.AddWithValue("@Type", fileType);
                                cmd.Parameters.AddWithValue("@Assignment", bytes);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                lblmessage.Text = "Assignment added successfully";
                                txtname.Text = "";
                                txtdate.Text = "";
                                con.Close();

                            }

                        }

                    }

                }

            }
            else
            {
                lblmessage.Text = "Error! Please Try Again";
            }
        }
    }
}