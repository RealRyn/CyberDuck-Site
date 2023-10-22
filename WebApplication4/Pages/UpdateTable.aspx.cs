using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.Pages
{
    public partial class UpdateTable : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";
        public string yearList = "";
        public string yrBorn = "";
        public string uName, fName, lName, email, phone, passwd, admin, uNameNew;
        public int yearBorn;
        protected void Page_Load(object sender, EventArgs e)
        {



            string fileName = "usersDB.mdf";
            uName = Session["name"].ToString();
            sqlSelect = "SELECT * FROM usersTBL WHERE uName = '" + uName + "'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;
            if (length == 0)
                msg = "User is not in the system";
            else
            {
                fName = table.Rows[0]["fName"].ToString().Trim();
                lName = table.Rows[0]["lName"].ToString().Trim();
                email = table.Rows[0]["email"].ToString().Trim();
                phone = table.Rows[0]["phone"].ToString().Trim();
                passwd = table.Rows[0]["password"].ToString().Trim();
                yearBorn = Convert.ToInt16(table.Rows[0]["yearBorn"]);
                for (int i = 1950; i <= 2023; i++)
                {
                    if (i == yearBorn)
                        yearList += "<option value = '" + i + "' selected= 'selects'> " + i + "</option>";
                    else
                        yearList += "<option value = '" + i + "'>" + i + "</option>";
                }

                    admin = table.Rows[0]["admin"].ToString().Trim();

            }



            if (this.IsPostBack)
            {
                sqlSelect = "SELECT * FROM usersTBL WHERE uName = '" + Request.Form["uName"] + "'";
                DataTable table1 = Helper.ExecuteDataTable(fileName, sqlSelect);
                length = table1.Rows.Count;

                if (length > 1)
                {

                }
                else {
                uNameNew = Request.Form["uName"];
                fName = Request.Form["fName"];
                lName = Request.Form["lName"];
                yearBorn = int.Parse(Request.Form["yearBorn"]);
                email = Request.Form["email"];
                phone = Request.Form["phone"];
                passwd = Request.Form["passwd"];
                admin = Request.Form["admin"];


                sqlUpdate += "UPDATE usersTBL ";
                sqlUpdate += "SET fName = N'" + fName + "', ";
                sqlUpdate += "lName = N'" + lName + "', ";
                sqlUpdate += "uName = N'" + uNameNew + "', ";
                sqlUpdate += "YearBorn = '" + yearBorn + "', ";
                sqlUpdate += "email = '" + email + "', ";
                sqlUpdate += "phone = '" + phone + "', ";
                sqlUpdate += "password = '" + passwd + "', ";
                sqlUpdate += "admin = '" + admin + "' ";
                sqlUpdate += "WHERE uName = '" + uName + "'";
                Helper.DoQuery(fileName, sqlUpdate);
                msg = "Success";
                }
            }



        }
    }
}