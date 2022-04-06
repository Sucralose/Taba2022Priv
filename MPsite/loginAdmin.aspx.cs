using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MPsite
{
    public partial class loginAdmin : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["submit"] != null)
            {
                string fileName = "usersDB.mdf";
                string tableName = "managerTbl";

                string userName = Request.Form["mName"];
                string pass = Request.Form["pw"];


                sqlLogin = $"Select * from {tableName} where mName = '{userName}' and pw = '{pass}' ";


                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "<div style='text-align: center;'>";
                    msg += "<h3> אינך מנהל, אין לך הרשאות צפיה בדף זה </h3>";
                    msg += "<a href='index.aspx'>[המשך]</a>";
                    msg += "</div>";    
                }
                else
                {
                    //Application["counter"] = (int)Application["counter"] + 1;

                    //Session["uName"] = table.Rows[0]["userName"];
                    Session["userFName"] = "מנהל";
                    Session["uName"] = "מנהל";
                    Session["admin"] = "yes";

                    Response.Redirect("index.aspx");
                }
            }

        }
    }
}