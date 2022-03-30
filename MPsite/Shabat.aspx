<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Shabat.aspx.cs" Inherits="MPsite.Shaabt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <title>שבת</title>
    <style>
       
        img{
            height:150px;
            border-radius:10%;
        }
        h1 {
            text-align: center;
            font-family: 'Comic Sans MS';
            font-size: 55px;
            color: black;
            text-decoration: underline;
        }

        h2 {
            font-family: 'Comic Sans MS';
            font-size: 25px;
            color: black;
            text-decoration: underline;
        }

        p {
            font-family: 'Comic Sans MS';
            font-size: 20px;
            color: black;
        }
        div {
            margin: 5px;
            float: right;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>יום שבת</h1>
    <div>
        <img src="pics/Shabat.png" />
    </div>
    <p>
        יוֹם הַשַׁבָּת הוא היום השביעי בשבוע לפי סיפור בריאת העולם התנ"כי. בחלק ממדינות אירופה ובתקן ISO-8601 זהו היום השישי בשבוע (שספירת הימים בו מתחילה ביום שני).
        <br />
    </p>
    <h2>
        יום השבת בתרבות ישראל
    </h2>
    <p>
        בעברית, שמם של כל שאר ימות השבוע מבוסס על מספרם הסידורי בשבוע (יום ראשון, יום שני וכו'). יוצא מן הכלל היום השביעי, שאינו קרוי "יום שביעי" אלא שבת. לפי התורה, ביום זה הסתיימה בריאת העולם, ואלוהים שָׁבַת מכל מלאכתו, ומכאן שמו של היום - שַׁבָּת. בהתאם לכך, ביהדות זהו יום המנוחה השבועי.
    </p>
    <h2>יום השבת ברחבי העולם</h2>
    <p>
        בכל ארצות אירופה ואמריקה זהו יום מנוחה, הנוסף על יום ראשון. בחלק מהארצות המוסלמיות זהו יום העבודה הראשון בשבוע, ובחלק אחר זהו יום מנוחה הנוסף על יום שישי.
        <br />
        בארצות סקנדינביה יום שבת נקראה lördag, ולפי מסורת עממית ילדים אינם רשאים לאכול ממתקים במהלך השבוע, ורק ביום השביעי הוריהם יכולים להרשות להם לזלול ממתקים. הממתק הנאכל ביותר הוא ממתק דגים העשוי ממח עצם של הדג, ג'לטין.
        <br />
        בחלק מלשונות אירופה נקרא יום שבת בשמות שנגזרו מהמילה העברית "שבת", ובחלק אחר הוא נקרא על-שם כוכב הלכת שבתאי (בלועזית: Saturn, סטורן). בערבית, שגם בה מקובל לכנות את רוב ימי השבוע על-פי מספרם הסידורי, נקראים ימי שישי ושבת בשמות מיוחדים. יום שבת מכונה "א-סבת" בדומה לשמו בעברית, אך בחלק ממדינות המגרב נהוג לכנותו "סוף השבוע". כמו כן בטורקית הוא נקרא 'היום שאחרי "יום ההתכנסות"' הלא הוא יום שישי.
    </p>
    <center><a href="September.aspx"><img src="pics/ReturnArrow.png" /></a></center>


</asp:Content>
