using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MPsite
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlMsg = ""; 
        public string st = "";
        public string yrBorn = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //יצירת מחרוזת לשנת לידה
            int year = DateTime.Now.Year;
            int from = year - 60;
            int to = year - 10;
            //התגת שנים
            for (int y = from; y<to; y++)
            {
                if(y== year - 16)
                {
                    yrBorn += $"<option value='{y}' selected>{y}</option>";
                }
                yrBorn += $"<option value='{y}' >{y}</option>";
            }

            if (Request.Form["submit"] != null)
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                //Get data from submitted form
                string userName = Request.Form["userName"];
                string firstName = Request.Form["firstName"];
                string lastName = Request.Form["lastName"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string prefix = Request.Form["prefix"];
                string phone = Request.Form["phoneNum"];
                string city = Request.Form["city"];
                string hobbies = Request.Form["hobies"].ToString();
                string pw = Request.Form["pw"];
                int yearBorn = int.Parse(Request.Form["yearBorn"]);

                //Hobbies SETUP
                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                char hob5 = 'F';
                if (hobbies.Contains('1')) hob1 = 'T';
                if (hobbies.Contains('2')) hob2 = 'T';
                if (hobbies.Contains('3')) hob3 = 'T';
                if (hobbies.Contains('4')) hob4 = 'T';
                if (hobbies.Contains('5')) hob5 = 'T';

                string sqlSelect = $"SELECT * FROM {tableName} WHERE userName = '{userName}' ";

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg = "user name has been taken";
                    sqlMsg = sqlSelect;
                }
                else {
                    string sqlInsert = $"INSERT INTO {tableName} ";
                sqlInsert += $"VALUES ('{userName}' , N'{firstName}' ,N'{lastName}' , '{email}' ,";
                sqlInsert += $" {yearBorn} , '{gender}' , '{prefix}' , '{phone}' , N'{city}' ,";
                 sqlInsert += $" '{hob1}' , '{hob2}' , '{hob3}' , '{hob4}' , '{hob5}' , '{pw}' )";

                    sqlMsg = sqlInsert;
                    Helper.DoQuery(fileName, sqlMsg);

                    msg = "Success";


                }
                //Table. Show data for assistance
                /*                st += "<table border='1' dir     = 'ltr' align = 'center'>";
                                  st += "<tr><th  colspan='2'><h1> הפריטים שהתקבלו </h1></th></tr>";

                                  st += "<tr><td width='100'> שם משתמש: </td> <td width='200'> " + userName + " </td></tr>";
                                  st += "<tr><td width='100'> שם פרטי: </td> <td width='200'> " + firstName + "</td></tr>";
                                  st += "<tr><td width='100'> שם משפחה: </td> <td width='200'> " + lastName + " </td></tr>";
                                  st += "<tr><td width='100'> כתובת דוא''ל: </td> <td width='200'> " + email + " </td></tr>";
                                  st += "<tr><td width='100'> מין </td> <td width='200'> " + gender + " </td></tr>";
                                  st += $"<tr><td width='100'> שנת לידה </td> <td width='200'> {yearBorn}</td></tr>";
                                  st += $"<tr><td width='100'> מס טלפון </td> <td width='200'> {prefix}-{phone}</td></tr>";
                                  st += $"<tr><td width='100'> תחביבים </td> <td width='200'> {hobbies}</td></tr>";
                                  st += $"<tr><td width='100'> סיסמא </td> <td width='200'> {password}</td></tr>";
                                  st += "</table>";
                */



            }
        }
    }
}