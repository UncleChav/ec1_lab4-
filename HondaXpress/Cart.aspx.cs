using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
        }

        protected void btnRemFromCart_Click(object sender, EventArgs e)
        {
            BindCartNumber();
        }

        public void BindCartNumber()
        {

            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProdArray = CookiePID.Split(',');
                int ProdCount = ProdArray.Length;
                ProdCount --;
                pCount.InnerText = ProdCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();

            }
        }
    }
}