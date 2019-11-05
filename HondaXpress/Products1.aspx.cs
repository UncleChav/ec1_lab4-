using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Int32 PID = Convert.ToInt32(Request.QueryString["PID"]);

            if(Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + PID;

                HttpCookie CartProd = new HttpCookie("CartPID");
                CartProd.Values["CartPID"] = CookiePID;
                CartProd.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProd);
            } 
            else
            {
                HttpCookie CartProd = new HttpCookie("CartPID");
                CartProd.Values["CartPID"] = PID.ToString();
                CartProd.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProd);
            }
            Response.Redirect("Products.aspx");

        }

        
    }
}