using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyFirsstDB.Pages
{
    public partial class login : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        public bool readySend = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null && Request.Form["check"] != "no")
            {

                

                string uName = Request.Form["uName"];
                string pw = Request.Form["pass"];
                Response.Write($"<script>console.log('{uName}, {pw}')</script>");
                string fileName = "usersDB.mdf";
                string tableName = "usersTBL";

                sqlLogin = $"SELECT * FROM {tableName} WHERE uName = '{uName}' AND password = '{pw}'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                int length = table.Rows.Count;
                Response.Write($"<script>console.log('{length}')</script>");
                if (length == 0)
                {
                    msg = "משתמש לא נמצא ";
                    Response.Write($"<script>console.log('{Request.Form["check"]}')</script>");

                    Response.Redirect("/Pages/register.aspx");
                }
                else
                {
                    Session["name"] = table.Rows[0]["uName"];
                    Session["login"] = "yes";
                    if ((bool)table.Rows[0]["admin"] == true)
                    { 
                        Session["admin"] = "yes";
                        Response.Write($"<script>console.log('test yes')</script>");
                        Application["onlineRegistered"] = ((int)Application["onlineRegistered"]) + 1;

                    }
                    else
                    {
                        Session["admin"] = "no";
                        Response.Write($"<script>console.log('test no')</script>");
                        Application["onlineRegistered"] = ((int)Application["onlineRegistered"]) + 1;
                    }

                    Application["onlineGuests"] = (int)Application["onlineGuests"] - 1;




                    Response.Redirect("/Pages/home.aspx");

                }

            }
        }
    }
}