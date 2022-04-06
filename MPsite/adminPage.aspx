<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="MPsite.adminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
         .center{
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            border:solid;
            border-color:black;
         
        }
        .noPerm{
            font-weight:700;
            color:red;
            font-family:Calibri;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<% if (Session["admin"] == "yes"){%>
    <div style="text-align:center;">
    <h4>[<a href="SimpleQuery.aspx"> שאילתה פשוטה</a>]</h4>
    <h4>[<a href="ShowTable.aspx">הצג את כל המשתמשים</a>]</h4>
    <h4>[<a href="deleteUser.aspx"> מחק משתמשים </a>]</h4>
    <h4>[<a href="ShowFemaleAndGmail.aspx">הראה את כל המשתמשים ממין נקבה שהדוא"ל שלהן הוא gmail</a>]</h4>
    <h4>[<a href="ShowMaleAndPrefix.aspx">הראה את כל המתמשים הזכרים שהקידומת שלהם היא 054</a>]</h4>
    <h4>[<a href="ShowHob1AndBorn2000To2006.aspx">הראה את כל המשתמשים שאוהבים מחשבים ונולדו בן השנים 2000 ל2006</a>]</h4>
    <h4>[<a href="ShowTelAvivOrModiin.aspx">הראה את כל המשתמשים שגרים במודיעין או תל-אביב</a>]</h4>

    </div>
<%}else{ %>
    <div class="center">
        <h1 class="noPerm">אינך מנהל</h1>
        <h3 class="noPerm"> אין לך הרשאה לצפות בדף זה </h3>
        <a href='index.aspx' class='linkToIndex'><h4>[ חזור לדף הראשי ]</h4></a>
    </div>
<%} %>

</asp:Content>
