using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_Navigacija
{
    public partial class Cetvrt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Loaddropdown();
            }

            lon.Text = (String)Session["Lon1"];
            lat.Text = (String)Session["Lat1"];
            string link = "https://maps.google.com/maps?q=" + (String)Session["Lon1"] + ", " + (String)Session["Lat1"] + "&z=12&output=embed";
            mapa.Controls.Add(new LiteralControl("<iframe src=\"" + link + "\"width=\"600\" height=\"450\" frameborder=\"0\" style=\"border: 0;\" aria-hidden=\"false\" allowfullscreen=\"\" tabindex=\"0\"></iframe><br />"));


            if ((String)Session["Jazik"] == "mkd")
            {

                TextBox2.Text = (String)Session["Izbran_centar"];
                String centar = (String)Session["Izbran_centar"];
                naslov.Text = "Информации за тест центар: " + centar;

                Button6.Text = "Одјави се";
                Button1.Text = "Назад";
                distanca.Text = "Пресметај дистанца";

            }
            else if ((String)Session["Jazik"] == "eng")
            {

                TextBox2.Text = (String)Session["Izbran_centar"];
                String centar = (String)Session["Izbran_centar"];
                naslov.Text = "Information about test center: " + centar;

                Button6.Text = "Sign out";
                Button1.Text = "Back";
                distanca.Text = "Calculate distance";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tret.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account/Login.aspx");
        }

        private void Loaddropdown()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("postgres_public_table_name.xml"));
            
            lista.DataSource = ds;
            lista.DataTextField = "name";
            lista.DataValueField = "lonlat";

            lista.DataBind();
        }

        protected void Distanca_Click(object sender, EventArgs e)
        {

            Session["Izbrana_postojka"] = lista.SelectedItem.Text;
            string koordinata = lista.SelectedItem.Value;
            String[] koordinati = koordinata.Split(',');
            double lat2 = Convert.ToDouble(koordinati[0]);
            double lon2 = Convert.ToDouble(koordinati[1]);
            double lat1 = Convert.ToDouble(Session["lat1"]);
            double lon1 = Convert.ToDouble(Session["lon1"]);

            const double PIx = 3.141592653589793;
            const double RADIUS = 6378.16;

            /// <summary>
            /// Convert degrees to Radians
            /// </summary>
            /// <param name="x">Degrees</param>
            /// <returns>The equivalent in radians</returns>
            double Radians(double x)
            {
                return x * PIx / 180;
            }


            double dlon = Radians(lon2 - lon1);
            double dlat = Radians(lat2 - lat1);

            double a = (Math.Sin(dlat / 2) * Math.Sin(dlat / 2)) + Math.Cos(Radians(lat1)) * Math.Cos(Radians(lat2)) * (Math.Sin(dlon / 2) * Math.Sin(dlon / 2));
            double angle = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));



            distance.Text = Math.Round(angle * RADIUS, 2) + "km";


        }

        protected void Lista_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    
}