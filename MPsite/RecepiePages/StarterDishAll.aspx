<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StarterDishAll.aspx.cs" Inherits="MPsite.RecepiePages.StartersDishAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/CardStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="Title">מנות קטנות</h1>
    <hr />
    <br />
    <div class="FlexContainer">       
        <div class="Card">
            <a href="RedChicken.aspx" class="insideCardContainer">
                <img src="../pics/RedChicken.jpg" />
                <h4> שוק עוף </h4>
            </a>
        </div>
        <div class="Card">
            <a href="Kebab.aspx" class="insideCardContainer">
                <img src="../pics/Kebab.jpg" />
                <h4> קבב </h4>   
            </a>
        </div>
        <div class="Card">
            <a href="ChickenNuggets.aspx" class="insideCardContainer">
                <img src="../pics/ChickenNuggets.jpg" />
                <h4> צ'יקן נאגטס </h4>
            </a>
        </div>
        
    </div>
</asp:Content>
