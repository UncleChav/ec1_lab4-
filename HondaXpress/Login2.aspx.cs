﻿using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
                {
                    txtFname.Text = Request.Cookies["UNAME"].Value;
                    txtPwd.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    btnLogin.Visible = true;
                }
                else
                {

                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtFname.Text, txtPwd.Text);

            if (CheckBox1.Checked)
            {
                Response.Cookies["UNAME"].Value = txtFname.Text;
                Response.Cookies["PWD"].Value = txtPwd.Text;

                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
            }

            if (user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                if (userManager.IsInRole(userManager.FindByName(userIdentity.GetUserName().ToString()).Id, "Admin"))
                {

                    Response.Redirect("~/AdminHome.aspx");
                    Response.Write(@"<script langauge='text/javascript'>alert('Welcome " + userIdentity.GetUserName().ToString() + "..');</script>");

                }
                else if(userManager.IsInRole(userManager.FindByName(userIdentity.GetUserName().ToString()).Id, "Customer"))
                {
                    Response.Redirect("~/UserHome.aspx");
                    Response.Write(@"<script langauge='text/javascript'>alert('Welcome " + userIdentity.GetUserName().ToString()+"..');</script>");


                }
            }
            else
            {
                Response.Write(@"<script langauge='text/javascript'>alert('Invalid email or password..');</script>");

                StatusText.Text = "";
                LoginStatus.Visible = true;
            }
        }
    }
}