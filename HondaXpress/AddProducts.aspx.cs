using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class AddProducts1 : System.Web.UI.Page
    {
        String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddProd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procedInsertProd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtProdName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtProdPrice.Text);
                cmd.Parameters.AddWithValue("@PDescription", txtDesc.Text);
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());


                // Insert Image to db
                if (ProdImg.HasFile)
                {
                    string path = Server.MapPath("~/Images/Products/") + PID;
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }
                    string extention = Path.GetExtension(ProdImg.PostedFile.FileName);
                    ProdImg.SaveAs(path + "\\" + txtProdName.Text.ToString().Trim() + PID + extention);

                    SqlCommand cmd2 = new SqlCommand("procedInsertPic", con);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@PID", PID);
                    cmd2.Parameters.AddWithValue("@Name", txtProdName.Text.ToString().Trim());
                    cmd2.Parameters.AddWithValue("@Extention", extention);
                    cmd2.ExecuteNonQuery();
                }
            }
        }
    }
}