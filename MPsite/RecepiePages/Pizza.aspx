<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pizza.aspx.cs" Inherits="MPsite.RecepiePages.Pizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/RcepiePageStyle.css" rel="stylesheet" />
    <link href="../Styles/MasterStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> פיצה</h1>
    <hr />
    <br />
    <img src="../pics/Pizza.jpg" />
    <h2>מצרכים</h2>
    <ul>
        <li>1 קילוגרם קמח</li>
        <li>2 כפות שמרים יבשים</li>
        <li>4 כפות שמן זית</li>
        <li>2.5 כוסות מים פושרים</li>
        <li>1 כף מלח</li>
        <li>1 כף סוכר</li>
        <li>מוצרלה מגורדת</li>
        <li>רוטב עגבניות</li>
        <li>תוספות נוספות לבחירה</li>
    </ul>
    <br />
    <h4>אופן הכנה</h4>
    <p>
     *   מעבירים לקערת המיקסר קמח, סוכר, שמן זית ושמרים.
        <br />
     *   להפעיל את המיקסר ולהוסיף מים ומלח עד לקבלת בצק רך.
        <br />
     *   מתפיחים את הבצק בקערה עטופה במגבת למשך 40 דקות
        <br />
     *   מרדדים את הבצק, מורחים מעט רוטב עגביות, ומפזרים את גבינת המוצרלה ביחד עם שאר התוספות.
        <br />
     *   אופים בתנור בחום של 220 מעלות צלזיוס למשך 15-18 דקות. 
        <br />
        <br />  
        בתאבון !
    </p>
</asp:Content>
