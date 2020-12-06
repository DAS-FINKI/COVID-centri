using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dizajn
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Jazik"] == null)
            {
                Session["Jazik"] = "mkd";
            }

            if((String)Session["Jazik"] == "mkd")
            {
                naslov.Text = "Добредојдовте, ве молиме најавете се/регистрирајте се за да продолжeте";
                korisnickoime.Attributes.Add("placeholder", "Корисничко име");
                email.Attributes.Add("placeholder", "Електронска пошта");
                pasvord.Attributes.Add("placeholder", "Лозинка");
                pasvord2.Attributes.Add("placeholder", "Потврди лозинка");
                korisnickoime2.Attributes.Add("placeholder", "Корисничко име");
                pasvord3.Attributes.Add("placeholder", "Лозинка");
                Button2.Text = "Регистрирај се";
                Button1.Text = "Најави се";
                Label1.Text = "НАЈАВИ СЕ СО ПОСТОЕЧКА СМЕТКА";
                Label2.Text = "РЕГИСТРИРАЈ СЕ";

            }
            else if((String)Session["Jazik"] == "eng"){

                naslov.Text = "Welcome, please log in/ sign up to continue";
                korisnickoime.Attributes.Add("placeholder", "Username");
                email.Attributes.Add("placeholder", "Email");
                pasvord.Attributes.Add("placeholder", "Password");
                pasvord2.Attributes.Add("placeholder", "Confirm password");
                korisnickoime2.Attributes.Add("placeholder", "Username");
                pasvord3.Attributes.Add("placeholder", "Password");
                Button2.Text = "Sign up";
                Button1.Text = "Log in";
                Label1.Text = "LOG IN USING YOUR ACCOUNT";
                Label2.Text = "SIGN UP";

            }
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vtor.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vtor.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["Jazik"] = "mkd";
            Response.Redirect("Prv.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["Jazik"] = "eng";
            Response.Redirect("Prv.aspx");
        }
    }
}