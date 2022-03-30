<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Elephant.aspx.cs" Inherits="MPsite.Elephant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
        /*   https://prnt.sc/1u37gzv -Color Palette   */

        body {
            direction: rtl;
            margin-left: 100px;
            margin-right: 100px;
            background-color: #FAF6E3;
        }

        h1 {
            text-align: center;
            font-family: 'Comic Sans MS';
            font-size: 55px;
            color: #8C4D00;
            text-decoration: underline;
        }

        h2 {
            font-family: 'Comic Sans MS';
            font-size: 25px;
            color: #C9A063;
            text-decoration: underline;
        }

        p {
            font-family: 'Comic Sans MS';
            font-size: 20px;
            color: #C9A063;
        }

        img {
            border-radius: 100%;
            width: 200px;
            height: 200px;
        }

        .animalImageDiv {
            text-align: center;
            width: 100%;
            height: 180px;
            margin: auto;
        }

        hr {
            color: #FAF6E3;
            background-color: #FAF6E3;
            width: 1600px;
        }

        li {
            font-size: 20px;
            color: #8C4D00;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>פיל</h1>
    <div style="margin:5px; float:right;">
        <img src="pics/Elephant1.png" />
    </div>
    <div>
        <p>
            פיל הוא מונח לקבוצה פוליפילטית של שלושה מיני יונקים – פיל סוואנה אפריקני, פיל יער אפריקני ופיל אסייתי – המהווים כולם את חיות היבשה הגדולות ביותר בעולם והם המינים היחידים ששרדו במשפחת הפיליים. בעבר היו מינים נוספים מהמשפחה, ביניהם הממותה, הפלאולוקסודון והסטגוטטרבלודון שאינם נחשבים לפילים רגילים.
            <br />
            המאפיין הבולט ביותר של הפילים הוא החדק, שאיתו הפילים שותים, אוכלים ומתרחצים. מפיהם בולטים שני חטי שנהב שהפכו אותם למטרה לציד רב שהביא לפגיעה קשה בהם. שני מיני הפיל האפריקני הם במצב שימור פגיע או ללא נתונים והאסייתי בסכנת הכחדה.
        </p>

        <h2>אנטומיה</h2>
        <p>
            כל בני משפחת הפיליים הם בעלי חיים גדולים מאוד. משקלם הוא למעלה מ-5 טונות וגובהם למעלה מ-3 מטרים (9.8 רגל). פיל הסוואנה האפריקני הוא בעל החיים היבשתי הגדול ביותר שחי כיום. גודלם הרב מעניק לפילים הגנה כמעט מפני כל הטורפים.
            <br />
            הפיל הגדול ביותר שתועד היה פיל סוואנה אפריקני שניצוד באנגולה ב-1955, משקלו היה 12,274 קילוגרם (27,060 ליברות) והוא התנשא לגובה של 4.2 מטרים (14 רגל).
            <br />
            <br />
            המאפיין הבולט ביותר של הפיל הוא החדק, שהוא התארכות של האף והשפה העליונה. לחדק מספר שימושים:
        </p>
    </div>
    <br />
    <center>
        <a href="Animal.aspx" style="font-size:25px;">
            <img src="pics/ReturnArrow.png" /></a>
    </center>

</asp:Content>
