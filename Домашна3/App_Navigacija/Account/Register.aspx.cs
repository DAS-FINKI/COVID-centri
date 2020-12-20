using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using App_Navigacija.Models;

namespace App_Navigacija.Account
{
    public partial class Register : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Jazik"] == null)
            {
                Session["Jazik"] = "mkd";
            }

            if ((String)Session["Jazik"] == "mkd")
            {
                Label1.Text = "Регистрирајте се";

                

                Button1.Text = "Регистрирај се";




            }
            else if ((String)Session["Jazik"] == "eng")
            {

                Label1.Text = "Register";

            

                Button1.Text = "Register";


            }

        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                Response.Redirect("~/Vtor.aspx");
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}