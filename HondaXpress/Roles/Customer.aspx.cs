using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress.Roles
{
    public partial class Customer : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void BindProductDetails()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);


            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProducts where PID=" + PID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        rptrProductDetails.DataBind();
                    }

                }
            }
        }



        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {

                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "";
                }
            }


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
            Response.Redirect("~/Products.aspx?PID=" + PID);

        }
    }
}
