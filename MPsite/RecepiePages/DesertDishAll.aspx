<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DesertDishAll.aspx.cs" Inherits="MPsite.RecepiePages.DesetDishesAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/CardStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="Title">קינוחים</h1>
    <hr />
    <br />
    <div class="FlexContainer">       
        <div class="Card">
            <a href="CrunchChocolate.aspx" class="insideCardContainer">
                <img src="../pics/CrunchChocolate.jpg" />
                <h4> קראנץ' שוקולד </h4>
            </a>
        </div>
                <div class="Card">
            <a href="OrangeCake.aspx" class="insideCardContainer">
                <img src="../pics/OrangeCake.jpg" />
                <h4> עוגת תפוזים </h4> 
            </a>
        </div>
        <div class="Card">
            <a href="KinamonRoll.aspx" class="insideCardContainer">
                <img src="../pics/KinamonRoll.jpg" />
                 <h4> רול קינמון </h4>                    
            </a>
        </div>
    </div>
</asp:Content>
