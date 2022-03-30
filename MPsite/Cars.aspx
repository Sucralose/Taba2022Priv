<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="MPsite.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        
        h1 {
            font-size: 40px;
            font-weight: bolder;
            color: orangered;
            text-align: center;
            font-family: 'Guttman Yad-Brush';
        }
        p{
            color:mediumpurple;
            font-size:25px;
            font-family:'Guttman Yad-Brush';
        }
        hr{
            width:80%;
            height:20px;
            background-color:deeppink;
            border-color:deeppink;
        }
        img {
            height:150px;
            width:auto;
        }
        div{
            text-align:center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <h1>אתר המכוניות שלי</h1>
    <div style="text-align: center;">
        <img src="pics/CarsLogo.png" style="width:250px;height:auto;" />
    </div>
            <p>כאן מוכרים מכוניות חדשות מסוגים שונים ומספקים גם שירותי גרירה</p>
        <br/>
    <div>
        <img src="pics/Car1.png"/>
        <img src="pics/Car2.png"/>
        <img src="pics/Car3.png"/>
    </div>

        <br /><hr /><br />
            <p>
                יש לנו מכוניות
                <span style="font-style:italic">מהירות</span>
                ומכוניות
                <span style="font-weight:bolder;">א י ט י ו ת</span>
                ,מכוניות
                <span style="color:red">אדומות</span>
                ומכוניות
                <span style="color:blue">כחולות</span>,
                מכוניות
                <span style="font-size:35px;">גדולות</span>
                ומכוניות
                <span style="font-size:15px">קטנות</span>
                <br />
                וכולן מכוניות נהדרות
            </p>

            <p>
                יש לנו מכוניות מסוג
                <a href="Toyota.aspx">Toyota</a>
                מכוניות מסוג
                <a href="Honda.aspx">Honda</a>
                ועוד סוגים נוספים
            </p>

            <p style="color:forestgreen; text-align:center; font-weight:bold;">ברוך הבא לאתרנו, אנו מקווים שתמצא אצלנו מכוניות כלבבך</p>
        <br /><hr /><br />
            <p style="text-align:center;">
                <a href="Honda.aspx">Honda</a>&nbsp;&nbsp;&nbsp;
                <a href="Toyota.aspx">Toyota</a>
            </p>


</asp:Content>
