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
        String Fname, Lname, DOB, Email, Tele;
        public int counter
        {
            get
            {
                if (ViewState["pcounter"] != null)
                {
                    return ((int)ViewState["pcounter"]);
                }
                else
                {
                    return 0;
                }
            }

            set
            {
                ViewState["pcounter"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCounter.Text = counter.ToString();

            counter++;



        }

        void StoreUserDetails()
        {
            //Form information stored in local variable

            Fname = txtFname.Text;
            Lname = txtLname.Text;
            Email = txtEmail.Text;
            Tele = txtTele.Text;
            DOB = txtDob.Text;

            // Info stored in session variables
            Session["Fname"] = Fname;
            Session["Lname"] = Lname;
            Session["Email"] = Email;
            Session["Tele"] = Tele;
            Session["DOB"] = DOB;


        }

        void RetrieveUserDetails()
        {

        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            Session["Fname"] = Fname;
            Session["Lname"] = Lname;
            Response.Redirect("Welcome.aspx");

        }
    }
}