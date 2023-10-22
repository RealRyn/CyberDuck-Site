using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirsstDB.Pages
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["login"].ToString() == "yes")
            {
                Application["onlineRegistered"] = ((int)Application["onlineRegistered"]) - 1;

            }
            Application["onlineGuests"] = ((int)Application["onlineGuests"]) + 1;



            Session.Abandon();
            Response.Redirect("https://localhost:44319/Pages/home");


            //Application.Lock();

           // Application.UnLock();

        }
    }
}