using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyFirsstDB.Pages
{
    public partial class register : System.Web.UI.Page
    {
     public  string select = "";
     public  string update = "";
     public  string msg = "OK";
        public bool readyornot = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";

            if (Request.Form["send"] != null && Request.Form["check"] != "no")
            {
                string uname = Request.Form["uName"];
                string lname = Request.Form["lName"];
                string fname = Request.Form["fName"];
                string sYBorn = Request.Form["YBorn"];
                string phone = Request.Form["phone"];
                string passwd = Request.Form["pass"];
                string email = Request.Form["email"];


                int YearBorn = int.Parse(sYBorn);

                select = "select uname from " + tableName +
                    " where uName = '" + uname + "';";
                DataTable table = Helper.ExecuteDataTable
           (fileName, select);
                int length = table.Rows.Count;
                if (length != 0)
                    msg = "קיימת רשומה על אותו שם ";
                else
                {
                    update = "insert into " + tableName + " (uName , lName , fName , YearBorn , password, phone, email) values ('" +
                      uname + "','" + lname + "','" + fname + "','" + YearBorn + "','" + passwd + "','" + phone + "','" + email + "');";

                    Helper.DoQuery(fileName, update);
                    msg = "success";

                }
            }
        }
    }
}