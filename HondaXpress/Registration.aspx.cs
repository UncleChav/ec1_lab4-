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
            Session["user"] = txtFname.Text + " " + txtLname;
            //Session["Lname"] = Lname;
            Response.Redirect("Welcome.aspx");
           

        }

       
       
    }
}