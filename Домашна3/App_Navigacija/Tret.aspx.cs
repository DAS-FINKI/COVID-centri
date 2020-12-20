using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_Navigacija
{
    public partial class Tret : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Loaddropdown();
            }

            if ((String)Session["Jazik"] == "mkd")
            {
                Button3.Text = "Одјави се";
                Button2.Text = "Назад";

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

        private void Loaddropdown()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("postgres_public_bolnica.xml"));
            lista.DataSource = ds;
            lista.DataTextField = "name";
            lista.DataValueField = "lonlat";
            
            lista.DataBind();
        }

        protected void Lista_SelectedIndexChanged(object sender, EventArgs e)
        {
            err.Visible = false;




            //Session["Izbran_centar"] = lista.SelectedItem.Text;
            //Response.Redirect("Navigacija.aspx");
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            if (lista.SelectedValue == "-1")
            {
                if ((String)Session["Jazik"] == "mkd")
                {
                    err.Text = "Изберете ковид центар!";
                }
                else
                {
                    err.Text = "Choose a covid center!";
                }
                err.Visible = true;
            }
            else
            {
                Session["Izbran_centar"] = lista.SelectedItem.Text;
                string koordinata = lista.SelectedItem.Value;
                String[] koordinati = koordinata.Split(',');
                Session["lat1"] = koordinati[0];
                Session["lon1"] = koordinati[1];
                Response.Redirect("Cetvrt.aspx");
            }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vtor.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        }
    
}