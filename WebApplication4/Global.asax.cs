using MyFirsstDB.Pages;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;

namespace WebApplication4
{
    public class Global : HttpApplication
    {
        public string select = "";
        public string update = "";
        public string msg = "OK";






        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["online"] = 0;
            Application["onlineRegistered"] = 0;
            Application["onlineGuests"] = 0;

        }

        void Session_Start(object sender, EventArgs e)
        {
            Session["name"] = "guest";
            Session["admin"] = "no";
            Session["login"] = "no";
            Session["picture"] = "no";



            Application["onlineGuests"] = ((int)Application["onlineGuests"]) + 1;



        }


        void Session_End(object sender, EventArgs e)
        {


            if (Session["login"].ToString() == "yes")
            {
                Application["onlineRegistered"] = ((int)Application["onlineRegistered"]) - 1;

            }
            else if (Session["login"].ToString() == "no")
            {
                Application["onlineGuests"] = ((int)Application["onlineGuests"]) - 1;

            }
            Session["name"] = "Guest";
            Session["admin"] = "no";
            Session["login"] = "no";
            Session["picture"] = "no";



        }

        void Application_End(object sender, EventArgs e)
        {
            Application["online"] = 0;
            Application["onlineRegistered"] = 0;
            Application["onlineGuests"] = 0;
        }
    }
}