using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App_Navigacija_MVC.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        const double PIx = 3.141592653589793;
        public ActionResult Vtor()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }

        public ActionResult Tret()
        {
            List<SelectListItem> ObjList = new List<SelectListItem>();
            string filePath = Server.MapPath("~/Datasources/postgres_public_bolnica.xml");
            using (DataSet ds = new DataSet())
            {
                ds.ReadXml(filePath);

                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    ObjList.Add(new SelectListItem { Text = r["name"].ToString(), Value = r["lonlat"].ToString() });
                }
            }
            ViewBag.Centers = ObjList;
            return View();
        }

        public ActionResult Cetvrt(string Selectedvalue, string SelectedText)
        {
            ViewBag.Locations = getLocationsList();
            ViewBag.SelectedCenter = SelectedText;
            if (!string.IsNullOrEmpty(Selectedvalue)) // in case of null it will throw exception.
            {
                string[] coords = Selectedvalue.Split(',');
                Session["lat"] = coords[0];
                Session["lon"] = coords[1];
                Session["SelectedCenter"] = SelectedText;
                ViewBag.link = "https://maps.google.com/maps?q=" + coords[1] + "," + coords[0] + "&z=12&output=embed";
            }
            return View();
        }
        public ActionResult CalculateDistance(string SelectedLocation)
        {
            Session["SelectedLocation"] = SelectedLocation; // will be used to set selected value of location drop down to maintain state
            ViewBag.Locations = getLocationsList(SelectedLocation);

            string[] coords = SelectedLocation.Split(',');

            double lat1 = Convert.ToDouble(Session["lat"]);
            double lon1 = Convert.ToDouble(Session["lon"]);
            double lat2 = Convert.ToDouble(coords[0]);
            double lon2 = Convert.ToDouble(coords[1]);

            const double RADIUS = 6378.16;
            double dlon = Radians(lon2 - lon1);
            double dlat = Radians(lat2 - lat1);

            double a = (Math.Sin(dlat / 2) * Math.Sin(dlat / 2)) + Math.Cos(Radians(lat1)) * Math.Cos(Radians(lat2)) * (Math.Sin(dlon / 2) * Math.Sin(dlon / 2));
            double angle = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));

            ViewBag.Distance = Math.Round(angle * RADIUS, 2) + "km";

            ViewBag.link = "https://maps.google.com/maps?q=" + Session["lon"] + "," + Session["lat"] + "&z=12&output=embed";
            return View("Cetvrt");
        }

        private List<SelectListItem> getLocationsList(string SelectedLocation = "")
        {
            List<SelectListItem> ObjList = new List<SelectListItem>();
            string filePath = Server.MapPath("~/Datasources/postgres_public_table_name.xml");
            using (DataSet ds = new DataSet())
            {
                ds.ReadXml(filePath);

                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    if (SelectedLocation == r["lonlat"].ToString())
                    {
                        ObjList.Add(new SelectListItem { Text = r["name"].ToString(), Value = r["lonlat"].ToString(), Selected = true });
                    }
                    else
                    {
                        ObjList.Add(new SelectListItem { Text = r["name"].ToString(), Value = r["lonlat"].ToString(), });
                    }
                }
            }
            return ObjList;
        }

        double Radians(double x)
        {
            return x * PIx / 180;
        }
    }
}