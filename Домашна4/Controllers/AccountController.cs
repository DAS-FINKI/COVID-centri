using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using App_Navigacija_MVC2.ViewModels;
using App_Navigacija_MVC2.Models;

namespace App_Navigacija_MVC.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        App_App_NavigacijaContext cxt = new App_App_NavigacijaContext();
        [AllowAnonymous]
        public ActionResult Login(string lang)        
        {
            if(!string.IsNullOrEmpty(lang))
            {
                Session["jazik"] = lang;
            }
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginVM model)
        {
            try
            {

                if (ModelState.IsValid)
                {
                    bool IsValidUser = cxt.Users
                   .Any(u => u.Email.ToLower() == model.Email.ToLower() && u.Password == model.Password);

                    if (IsValidUser)
                    {
                        FormsAuthentication.SetAuthCookie(model.Email, model.RememberMe);
                        return RedirectToAction("Vtor", "Home");
                    }
                }
                ModelState.AddModelError("", "invalid Username or Password");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", "invalid Username or Password, please try again.");
            }
            return View();
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(RegisterVM model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var user = new User { Email = model.Email, Password = model.Password };
                    cxt.Users.Add(user);
                    cxt.SaveChanges();
                    return RedirectToAction("Login");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            } 
            return View();
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");             
        }
    }
}