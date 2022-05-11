using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MPsite
{
    public partial class Survey : System.Web.UI.Page
    {
        public string str = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uName"].ToString() == "אורח")
            {
                str = "<h2 class='notAllowed'> רק משתמש רשאי להצביע </h2>";
            }
            else
            {
                    if (Request.Form["submit"] != null)
                    {
                    if ((bool)Session["voted"])
                    {
                        str = "<h2 class='notAllowed'> הנך רשאי להצביע רק פעם אחת </h2>";
                    }
                    else
                    {
                        // לסמן שהמשתמש הצביע
                        Session["voted"] = true;

                        //הוספת הבחירה
                        string ans = Request.Form["surv"];

                        if (ans == "1")
                        {
                            Application["q1"] = (int)Application["q1"] + 1;
                        }
                        if (ans == "2")
                        {
                            Application["q2"] = (int)Application["q2"] + 1;
                        }
                        if (ans == "3")
                        {
                            Application["q3"] = (int)Application["q3"] + 1;
                        }
                        if (ans == "4")
                        {
                            Application["q4"] = (int)Application["q4"] + 1;
                        }
                        
                    }
                }
            }

            //
            /// בניית הטבלה לכל המשתמשים
            //


            //סך הקולות
            /*
            int[] s = new int[4];
            s[0] = (int)Application["q1"];
            s[1] = (int)Application["q2"];
            s[2] = (int)Application["q3"];
            s[3] = (int)Application["q4"];
            */

            int[] s = { (int)Application["q1"], (int)Application["q2"], (int)Application["q3"], (int)Application["q4"] };


            const int width = 10;
            double[] w = new double[4];
            for (int i = 0; i < w.Length; i++)
            {
                w[i] = s[i] * width;
            }


            //הצגת הסקר
            str += "<h1>תוצאות הסקר</h1>";

            //הצגת התוצאות בטקסט

            str += $"s1={s[0]}, s2={s[1]}, s3={s[2]}, s4={s[3]} <br/>";
            //בניית הגרף

            str += "<table border = '1' dir='ltr'>";

            str += "<tr><td align= 'center'> כל יום </td>";
            str += $"<td width='500px'><img src='pics/Red.png' height='30' width='{w[0]}' /> </td></tr>";

            str += "<tr> <td align= 'center'> כ4-6 פעמים בשבוע </td>";
            str += $"<td width='500px'> <img src='pics/Purple.png' height='30' width='{w[1]}' /></td></tr>";

            str += "<tr> <td align= 'center'> פחות מ4 פעמים בשבוע </td>";
            str += $"<td width='500px'> <img src='pics/Lime.png' height='30' width='{w[2]}' /></td></tr>";

            str += "<tr> <td align= 'center'> כלל לא </td>";
            str += $"<td width='500px'> <img src='pics/Yellow.png' height='30' width='{w[3]}' /></td></tr>";

            str += "</table>";
        }
    }
}