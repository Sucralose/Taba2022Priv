<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="MPsite.Froum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            margin-right:15%;
            margin-left:15%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<% if (Session["uName"] != "אורח"){%>
        <div>
            <h2> חלק זה של האתר עדיין בבניה! </h2>
        </div>
<%}else{ %>
    <div class="center">
        <img src="../pics/Lock.png" class="lockImg" />
        <h1 class="noPerm">אינך רשום</h1>
        <h3 class="noPerm"> אין לך הרשאה לצפות בדף זה </h3>
        <h3 class="noPerm"> נא התחבר על מנת לצפות בחלק זה של האתר </h3>
        <a href='index.aspx' class='linkToIndex'><h4>[ חזור לדף הראשי ]</h4></a>
    </div>
<%} %>
</asp:Content>
