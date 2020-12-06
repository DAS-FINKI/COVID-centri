using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dizajn
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((String)Session["Jazik"] == "mkd")
            {
                Button5.Text = "За нас";
                Button2.Text = "Назад";
                Button1.Text = "Пребарај";
                label1.Text = "КОВИД-19";
                Label2.Text = "ТЕСТ ЦЕНТРИ";
                Label3.Text = "За пребарување на локации на тест центрите притиснете овде";
                

            }
            else if ((String)Session["Jazik"] == "eng")
            {
                Button5.Text = "About";
                Button2.Text = "Back";
                Button1.Text = "Search";
                label1.Text = "COVID-19";
                Label2.Text = "TEST CENTERS";
                Label3.Text = "To search for a location of a test center click here";

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tret.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("Prv.aspx");
           
        }

       
    }
}