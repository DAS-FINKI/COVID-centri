using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dizajn
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((String)Session["Jazik"] == "mkd")
            {
                Button3.Text = "Одјави се";
                Button2.Text = "Назад";
                lista.Items.FindByValue("-1").Text = "Изберете тест центар";

                button1.Text = "Продолжи";
             

            }
            else if ((String)Session["Jazik"] == "eng")
            {
                Button3.Text = "Sign out";
                Button2.Text = "Back";
                lista.Items.FindByValue("-1").Text = "Choose a test center";
                button1.Text = "Continue";



            }

        }

        protected void lista_SelectedIndexChanged(object sender, EventArgs e)
        {
            err.Visible = false;
            //Session["Izbran_centar"] = lista.SelectedItem.Text;
            //Response.Redirect("Navigacija.aspx");
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            if(lista.SelectedValue == "-1")
            {
                if((String)Session["Jazik"] == "mkd"){
                    err.Text = "Изберете ковид центар!";
                }else
                {
                    err.Text = "Choose a covid center!";
                }
                err.Visible = true;
            }
            else
            {
                Session["Izbran_centar"] = lista.SelectedItem.Text;
                Response.Redirect("Cetvrt.aspx");
            }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vtor.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prv.aspx");
        }
    }
}