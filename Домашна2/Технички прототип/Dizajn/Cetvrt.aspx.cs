using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dizajn
{
    public partial class Navigacija : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if ((String)Session["Jazik"] == "mkd")
            {

                TextBox2.Text = (String)Session["Izbran_centar"];
                String centar = (String)Session["Izbran_centar"];
                naslov.Text = "Информации за тест центар: " + centar;
                TextBox1.Attributes.Add("placeholder", "Ваша локација");
                Button6.Text = "Одјави се";
                Button1.Text = "Назад";
              

            }
            else if ((String)Session["Jazik"] == "eng")
            {

                TextBox2.Text = (String)Session["Izbran_centar"];
                String centar = (String)Session["Izbran_centar"];
                naslov.Text = "Information about test center: " + centar;
                TextBox1.Attributes.Add("placeholder", "Your location");
                Button6.Text = "Sign out";
                Button1.Text = "Back";
            

            }



           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tret.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prv.aspx");
        }
    }
}