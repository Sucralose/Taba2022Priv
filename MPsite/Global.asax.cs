using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace MPsite
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //מונה מבקרים
            Application["counter"] = 0;

            //סקר
            Application["q1"] = 0;
            Application["q2"] = 0;
            Application["q3"] = 0;
            Application["q4"] = 0;

        }

        void Session_start(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["userFName"] = "אורח";
            Session["admin"] = "no";
            Session["voted"] = false;
        }

        void Session_end(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["userFName"] = "אורח";
            Session["admin"] = "no";
            Session["voted"] = false;
        }
    }
}