<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Honda.aspx.cs" Inherits="MPsite.Honda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
       
        h1 {
            font-size: 40px;
            color: orangered;
            font-weight:bolder;
            text-align: center;
            font-family: 'Guttman Yad-Brush';
        }

        p {
            color: blue;
            font-size: 25px;
            font-family: 'Guttman Yad-Brush';
            text-align:center;
        }

        hr {
            width: 80%;
            height: 15px;
            background-color: orangered;
            border-color: orangered;
        }
        img {
            height: 150px;
            width: auto;
        }
        div{
            text-align:center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <h1>Honda</h1>
    <div >
        <img src="pics/HondaLogo.png" style="height:250px;width:auto;"  />
    </div>
        <br/>
            <p style="text-align:center;">אנו מוכרים מכוניות הונדה</p>
        <br />
    <div >
        <img src="pics/Honda1.png" />
        <img src="pics/Honda2.png" />
        <img src="pics/Honda3.png" />
    </div>
            <br/><hr/><br />
             <p>
                 <a href="Toyota.aspx">Toyota</a>
                 &nbsp;&nbsp;&nbsp;
                 <a href="Cars.aspx">חזרה לדף ראשי</a>
             </p>


</asp:Content>
