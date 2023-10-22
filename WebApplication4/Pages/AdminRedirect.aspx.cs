using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.Pages
{
    public partial class AdminRedirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "yes")
            {
                Response.Write($"<script>console.log('if')</script>");
            }
            else
            {
                Response.Write($"<script>console.log('else')</script>");

                Response.Redirect("/Pages/nopermission.aspx");

            }
        }
    }
}