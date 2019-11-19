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
            
                if (!this.IsPostBack)
                {
                    this.BindGrid();
                }
         

        }

        private void BindGrid()
        {
            localhost.WebService service = new localhost.WebService();
            GridView1.DataSource = service.GetAllProducts();
            GridView1.DataBind();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            long PID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string PName = (row.FindControl("txtPName") as TextBox).Text;
            string PPrice = (row.FindControl("txtPPrice") as TextBox).Text;
            string PDescription = (row.FindControl("txtPDescription") as TextBox).Text;
            localhost.WebService service = new localhost.WebService();
            service.Update(PID, PName, PPrice, PDescription);
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            long PID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            localhost.WebService service = new localhost.WebService();
            service.Delete(PID);
            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
               (e.Row.Cells[3].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

        protected void btnAddProd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procedInsertProd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtPName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtPPrice.Text);
                cmd.Parameters.AddWithValue("@PDescription", txtPDescription.Text);
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
                    ProdImg.SaveAs(path + "\\" + txtPName.Text.ToString().Trim() + PID + extention);

                    SqlCommand cmd2 = new SqlCommand("procedInsertPic", con);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@PID", PID);
                    cmd2.Parameters.AddWithValue("@Name", txtPName.Text.ToString().Trim());
                    cmd2.Parameters.AddWithValue("@Extention", extention);
                    cmd2.ExecuteNonQuery();
                }
            }
        }


    }
}