using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MPsite
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string myTime;
        public string loginMsg;

        protected void Page_Load(object sender, EventArgs e)
        {
            myTime = DateTime.Now.ToString();

            loginMsg = "<h3> שלום ";
            loginMsg += Session["userFName"];
            loginMsg += "</h3>";

            if (Session["admin"].ToString() == "yes") //Managers
            {
                loginMsg += "[<a href = '../AdminPages/adminPage.aspx'> דף מנהל </a>]";
                loginMsg += "[<a href = '../logout.aspx'> התנתק </a>]";

            }
            else
            {
                if ( Session["uName"].ToString() == "אורח" ) //Guests
                {
                    loginMsg += "[<a href = 'login.aspx'>התחבר</a>]<br />";
                    loginMsg += "[<a href = 'ReigisterPage.aspx'>הירשם</a>]<br />";
                }
                else //Users
                {
                    loginMsg += "[<a href = 'logout.aspx'> התנתק </a>]";
                }
            }
            
        }
    }
}