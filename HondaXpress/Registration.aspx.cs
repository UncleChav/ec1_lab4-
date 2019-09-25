using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class Registration : System.Web.UI.Page
    {
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            BindCartNumber();



        }

        void StoreUserDetails()
        {
            //Form information stored in local variable

         

            // Info stored in session variables
            Session["Fname"] = txtFname.Text;
            Session["Lname"] = txtLname.Text;
            Session["Email"] = txtEmail.Text;
            Session["Tele"] = txtTele.Text;
            Session["DOB"] = txtDob.Text;


        }

        void RetrieveUserDetails()
        {

        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            //StoreUserDetails();
            Session["Fname"] = txtFname.Text;
            //Session["Lname"] = Lname;
            Response.Redirect("Welcome.aspx");
            
        }

        public void BindCartNumber()
        {

            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProdArray = CookiePID.Split(',');
                int ProdCount = ProdArray.Length;
              //  pCount.InnerText = ProdCount.ToString();
            }
            else
            {
                //pCount.InnerText = 0.ToString();

            }
        }
    }
}