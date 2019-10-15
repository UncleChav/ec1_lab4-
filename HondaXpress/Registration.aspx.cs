using System;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


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
            // Default UserStore constructor uses the default connection string named: DefaultConnection
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser() { UserName = txtFname.Text , Email = txtEmail.Text, PhoneNumber = txtTele.Text, PasswordHash = txtPwd.Text };
            IdentityResult result = manager.Create(user, txtPwd.Text);

            if (result.Succeeded)
            {
                StatusMessage.Text = string.Format("User {0} was created successfully!", user.UserName);
            }
            else
            {
                StatusMessage.Text = result.Errors.FirstOrDefault();
            }


        }



    }
}