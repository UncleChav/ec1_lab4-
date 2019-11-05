using System;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace HondaXpress
{
    public partial class Registration : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {

            IdentityDbContext context = new IdentityDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            // Default UserStore constructor uses the default connection string named: DefaultConnection
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);

            char firstLetter = txtLname.Text.ToCharArray().ElementAt(0);
            var username = txtFname.Text + firstLetter ;

            var user = new IdentityUser() { UserName = txtFname.Text, Email = txtEmail.Text, PhoneNumber = txtTele.Text };

            IdentityResult result = manager.Create(user, txtPwd.Text);

            if (!roleMgr.RoleExists("Admin") || !roleMgr.RoleExists("Customer"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "Admin" });
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "Customer" });
            }


            if (!manager.IsInRole(manager.FindByName(txtFname.Text).Id, "Customer") || !txtFname.Text.Equals("Chavoy"))
            {

                IdUserResult = manager.AddToRole(manager.FindByName(txtFname.Text).Id, "Customer");

            }
            else if (!manager.IsInRole(manager.FindByName("Chavoy").Id, "Admin"))
            {
                IdUserResult = manager.AddToRole(manager.FindByName("Chavoy").Id, "Admin");
                if (!txtFname.Text.Equals("Chavoy"))
                {
                    IdUserResult = manager.AddToRole(manager.FindByName(txtFname.Text).Id, "Customer");
                }
            }
        

            if (result.Succeeded)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                StatusMessage.Text = result.Errors.FirstOrDefault();
            }



        }



    }
}