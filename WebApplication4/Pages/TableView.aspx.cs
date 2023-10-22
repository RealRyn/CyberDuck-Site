using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Security.Cryptography.X509Certificates;

namespace WebApplication4.Pages
{
    public partial class TableView : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
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

            if (IsPostBack)
            {
                return;
            }


            string toAdd = "";
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            sqlSelect = $"SELECT * FROM {tableName} WHERE fName <> 'guest'";
            DataTable table = Helper.ExecuteDataTable
           (fileName, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0)
                msg = "אין נרשמים";
            else
            {
                st += "<tr>";
                st += "<th>שם משתמש</th>";
                st += "<th>שם פרטי </th>";
                st += "<th>שם משפחה</th>";
                st += "<th>אימייל</th>";
                st += "<th>סיסמה</th>";
                st += "<th>מס' טלפון</th>";
                st += "<th>שנת לידה</th>";
                st += "<th>מנהל<th>";
                st += "</tr>";

                for (int i = 0; i < length; i++)
                {


                    if (table.Rows[i]["fName"].ToString() != "guest")
                    {
                        st += "<tr>";
                        st += "<td>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td>" + table.Rows[i]["lName"] + "</td>";
                        st += "<td>" + table.Rows[i]["email"] + "</td>";
                        st += "<td>" + table.Rows[i]["password"] + "</td>";
                        st += "<td>" + table.Rows[i]["phone"] + "</td>";
                        st += "<td>" + table.Rows[i]["YearBorn"] + "</td>";
                        if (table.Rows[i]["admin"].ToString() == "True")
                        {
                            toAdd = "<td>" + "Admin" + "</td>";
                        }
                        else if (table.Rows[i]["admin"].ToString() == "False")
                        {
                            toAdd = "<td>" + "User" + "</td>";
                        }

                        if (table.Rows[i]["lName"].ToString() == "guest")
                        {
                            toAdd = "<td>" + "Guest" + "</td>";

                        }

                        st += toAdd;

                        st += "</tr>";
                    }

                }
            msg = " נרשמו: " + length + " אנשים ";



            }
        }

        protected void Delete(object sender, EventArgs e)
        {
            Response.Write($"<script>console.log('entered dell')</script>");

            string toAdd = "";

            string fileName = "usersDB.mdf";
            string username = txtDel.Value;
            Response.Write($"<script>console.log('{username}')</script>");

            string SQL = $"DELETE FROM usersTBL WHERE uName='{username}'";
            Helper.DoQuery(fileName, SQL);
            string tableName = "usersTbl";
            sqlSelect = $"SELECT * FROM {tableName} WHERE fName <> 'guest'";
            DataTable table = Helper.ExecuteDataTable
                       (fileName, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0)
                msg = "אין נרשמים";
            else
            {
                st += "<tr>";
                st += "<th>שם משתמש</th>";
                st += "<th>שם פרטי </th>";
                st += "<th>שם משפחה</th>";
                st += "<th>אימייל</th>";
                st += "<th>סיסמה</th>";
                st += "<th>מס' טלפון</th>";
                st += "<th>שנת לידה</th>";
                st += "<th>מנהל<th>";
                st += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td>" + table.Rows[i]["uName"] + "</td>";
                    st += "<td>" + table.Rows[i]["fName"] + "</td>";
                    st += "<td>" + table.Rows[i]["lName"] + "</td>";
                    st += "<td>" + table.Rows[i]["email"] + "</td>";
                    st += "<td>" + table.Rows[i]["password"] + "</td>";
                    st += "<td>" + table.Rows[i]["phone"] + "</td>";
                    st += "<td>" + table.Rows[i]["YearBorn"] + "</td>";
                    if (table.Rows[i]["admin"].ToString() == "True")
                    {
                        toAdd = "<td>" + "Admin" + "</td>";
                    }
                    else if (table.Rows[i]["admin"].ToString() == "False")
                    {
                        toAdd = "<td>" + "User" + "</td>";
                    }

                    if (table.Rows[i]["lName"].ToString() == "guest")
                    {
                        toAdd = "<td>" + "Guest" + "</td>";

                    }
                    st += toAdd;
                    st += "</tr>";
                }
                msg = " Signed: " + length + " People ";

            }
        }
    }
}