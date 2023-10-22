using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.Pages
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
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

            string fileName = "usersDB.mdf";
            string tableName = "usersTBL";


            sqlLogin = $"SELECT * FROM {tableName} WHERE admin = 'false'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
            int length = table.Rows.Count;
            
            //registered users w/o admin permission + guests
            Response.Write($"<script>console.log('users registered w/o admin permission: {length} ')</script>");

            string sqlLogin1 = $"SELECT * FROM {tableName} WHERE lName <> 'guest'";
            DataTable table1 = Helper.ExecuteDataTable(fileName, sqlLogin1);
            int length1 = table1.Rows.Count;
            //registered users + admin permission
            Response.Write($"<script>console.log('users registered + users with admin permission: {length1} ')</script>");


            //online users
            Response.Write($"<script>console.log('total users online: {Application["online"].ToString()} ')</script>");
            Response.Write($"<script>console.log('guests users online: {Application["onlineGuests"].ToString()} ')</script>");

            Response.Write($"<script>console.log('{Session["name"]}')</script>");
            Response.Write($"<script>console.log('{Session["admin"]}')</script>");
            Response.Write($"<script>console.log('{Session["login"]}')</script>");


        }
    }
}