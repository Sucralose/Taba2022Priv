using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace MPsite
{
    public partial class deleteUser : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlDelete = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg = "<div class='center'>";
                msg += "<h1 class='noPerm'>אינך מנהל</h1>";
                msg += "<h3 class='noPerm'> אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href='index.aspx' class='linkToIndex'><h4>[ חזור לדף הראשי ]</h4></a>";
                msg += "</div> ";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                sqlDelete = $"SELECT * FROM {tableName}";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlDelete);

                string userToDelete = "";

                int length = table.Rows.Count;
                if (length == 0)
                    msg = " אין נרשמים ";
                else
                {
                    st += "<tr>";
                    st += "<th> שם משתמש </th>";
                    st += "<th> שם פרטי </th>";
                    st += "<th> שם משפחה </th>";
                    st += "<th> כתובת דואר אלקטרוני</th>";
                    st += "<th> שנת לידה </th>";
                    st += "<th> מין </th>";
                    st += "<th> מספר טלפון </th>";
                    st += "<th> עיר מגורים </th>";
                    st += "<th> Computers </th>";
                    st += "<th> Movies </th>";
                    st += "<th> Cooking </th>";
                    st += "<th> Music </th>";
                    st += "<th> TV </th>";
                    st += "<th> סיסמה </th>";
                    st += "<th> </th>";
                    st += "</tr>";
                }

                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["userName"]} </td>";
                    st += $"<td class='alignRight'>{ table.Rows[i]["firstName"]} </td>";
                    st += $"<td class='alignRight'>{ table.Rows[i]["lastName"]} </td>";
                    st += $"<td class='alignLeft'>{ table.Rows[i]["email"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["YearBorn"]} </td>";
                    st += $"<td class='alignLeft'>{ table.Rows[i]["gender"]} </td>";
                    st += $"<td class='alignLeft'>{table.Rows[i]["prefix"]}-{table.Rows[i]["phone"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["city"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["hob1"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["hob2"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["hob3"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["hob4"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["hob5"]} </td>";
                    st += $"<td class='alignCenter'>{ table.Rows[i]["pw"]} </td>";
                    
                    userToDelete = table.Rows[i]["userName"].ToString();

                    st += $"<td style='text-align: center; border: 1px solid black;'>";
                    st += $"<a href= 'DeleteRecord.aspx?userName={userToDelete}'> [delete] </a>";
                    st += "</td>";
                    st += "</tr>";
                }
                msg = $"נרשמו: {length} אנשים";


            }
        }
    }
}