using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_Navigacija
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                if ((String)Session["Jazik"] == "mkd")
                {
                    Button4.Text = "Назад";


                }
                else if ((String)Session["Jazik"] == "eng")
                {
                    Button4.Text = "Back";

                }

            }

            protected void Button4_Click(object sender, EventArgs e)
            {
                Response.Redirect("Vtor.aspx");
            }

        }
}
