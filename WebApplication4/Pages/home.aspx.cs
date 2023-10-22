using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string select = "";
            string update = "";
            string msg = "OK";
            Response.Write($"<script>console.log('meow')</script>");

            if (Session["name"].ToString() == "guest")
            {
                Random rnd = new Random();
                string fileName = "usersDB.mdf";
                string tableName = "usersTBL";

                select = "select uname from " + tableName +
        " where uName = '" + "NULL" + "';";
                DataTable table = Helper.ExecuteDataTable
           (fileName, select);

                string randomGuest = $"guest{rnd.Next(1, 100000)}";

                update = "insert into " + tableName + " (uName , lName , fName , YearBorn , password, city) values ('" +
                randomGuest + "','" + "guest" + "','" + "guest" + "','" + "1950" + "','" + "guest" + "','" + "guest" + "');";
                Helper.DoQuery(fileName, update);
                msg = "success";


                Response.Write($"<script>console.log('{msg}')</script>");
            }
            Response.Write($"<script>console.log('{Session["name"]}')</script>");
            Response.Write($"<script>console.log('login or not {Session["login"].ToString()}')</script>");

            Response.Write($"<script>console.log('session ended')</script>");
        }
    }
}