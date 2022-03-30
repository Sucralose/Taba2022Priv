using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MPsite
{
    public partial class login : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Form["submit"] != null)
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                string userName = Request.Form["userName"];
                string pass = Request.Form["pw"];


                sqlLogin = $"Select * from {tableName} where userName = '{userName}' and pw = '{pass}' ";


                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if(length == 0)
                {
                    msg = "no users";
                    Response.Redirect("login.aspx");                    
                }
                else
                {
                    Application["counter"] = (int)Application["counter"] + 1;

                    Session["uName"] = table.Rows[0]["userName"];
                    Session["userFName"] = table.Rows[0]["firstName"];

                    Response.Redirect("Animal.aspx");// Change to defualt page.
                }
            }

        }
    }
}