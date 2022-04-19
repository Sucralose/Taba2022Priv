<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainDishAll.aspx.cs" Inherits="MPsite.RecepiePages.MainDishAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/CardStyles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="Title">מנות גדולות</h1>
    <hr />
    <br />
    <div class="FlexContainer">       
        <div class="Card">
            <a href="Pizza.aspx" class="insideCardContainer">
                <img src="../pics/Pizza.jpg" />
                <h4> פיצה </h4>
            </a>
        </div>
        <div class="Card">
            <a href="RedCuba.aspx" class="insideCardContainer">
                <img src="../pics/RedCuba.jpg" />
                <h4> מרק קובה סלק </h4>   
            </a>
        </div>
        <div class="Card">
            <a href="ShoitLevana.aspx" class="insideCardContainer">
                <img src="../pics/ShoitLevana.jpg" />
                <h4> גולאש עם שעועית לבנה </h4>
            </a>
        </div>
        
    </div>
</asp:Content>
