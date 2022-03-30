<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Toyota.aspx.cs" Inherits="MPsite.Toyota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
       

        h1 {
            font-size: 40px;
            color: orangered;
            font-weight: bolder;
            text-align: center;
            font-family: 'Guttman Yad-Brush';
        }

        p {
            color: darkgreen;
            font-size: 25px;
            font-family: 'Guttman Yad-Brush';
            text-align:center;
        }

        hr {
            width: 80%;
            height: 15px;
            background-color: forestgreen;
            border-color: forestgreen;
        }
        img{
            height:150px;
            width:auto;
        }
        div{
            text-align:center;
        }
         </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h1>Toyota</h1>
    <div>
        <img src="pics/ToyotaLogo.png" style="width:250px;height:auto" />
    </div>
            <p>אנו מוכרים מכוניות טויוטה</p>
        <br/>
    <div>
        <img src="pics/Toyota1.png" />
        <img src="pics/Toyota2.png" />
        <img src="pics/Toyota3.png" />
    </div>
        <br/><hr/><br/>
            <p>
                <a href="Honda.aspx">Honda</a>
                &nbsp;&nbsp;&nbsp;
                <a href="Cars.aspx">חזרה לדף ראשי</a>
            </p>


</asp:Content>
