using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class ProductView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["PID"] != null)
            {
                if (!IsPostBack)
                {
                    BindProductImages();
                    BindProductDetails();
                }
            }
            else
            {
                Response.Redirect("~/Products.aspx");
            }
        }

        private void BindProductDetails()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);

            String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProducts where PID=" + PID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtProducts = new DataTable();
                        sda.Fill(dtProducts);
                        rptrProductDetails.DataSource = dtProducts;
                        rptrProductDetails.DataBind();
                    }

                }
            }
        }

        private void BindProductImages()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProductImages where PID=" + PID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtProducts = new DataTable();
                        sda.Fill(dtProducts);
                        rptrImages.DataSource = dtProducts;
                        rptrImages.DataBind();
                    }

                }
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);

            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + PID;

                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = CookiePID;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = PID.ToString();
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("~/ProductView.aspx?PID=" + PID);
        }
    }
}