<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MPsite.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CardStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 style="text-align:center">דף הבית</h1>
    <hr />
    <br />
    <div class="FlexContainer">       
        <div class="Card">
            <a href="RecepiePages/StarterDishAll" class="insideCardContainer">
                <img src="pics/ChickenNuggets.jpg" />
                <h4> מנות ראשונות </h4>
            </a>
        </div>
        <div class="Card">
            <a href="RecepiePages/MainDishAll.aspx" class="insideCardContainer">
                <img src="pics/ShoitLevana.jpg" />
                <h4> מנות עיקריות  </h4>
            </a>
        </div>
        <div class="Card">
            <a href="RecepiePages/DesertDishAll.aspx" class="insideCardContainer">
                <img src="pics/CrunchChocolate.jpg" />
                <h4> קינוחים </h4>
            </a>    
        </div>    
    </div>
</asp:Content>
