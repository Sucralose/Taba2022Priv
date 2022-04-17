using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MPsite
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"].ToString() == "no")
            {  
                Response.Redirect("index.aspx");
            }
            else
            {

                string userName = Request.QueryString["userName"].ToString();

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                string sqlDelete = $"Delete from {tableName} where userName = '{userName}' ";
                Helper.DoQuery(fileName, sqlDelete);

                
            }
            Response.Redirect("deleteUser.aspx");
        }
    }
}