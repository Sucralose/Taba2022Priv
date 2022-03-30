<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Hanukia.aspx.cs" Inherits="MPsite.Hanukia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        img{
            height:600px;
            text-align:center;
            margin:75px;
        }
        h1{
            text-align:center;
            color:red;
        }
    </style>
    <script>
        function show(newPic) {
            pic.src = newPic;
        }
        function start() {
            var day = parseInt(prompt("כמה נרות להדליק?", 0));
            var newPic = "pics/Hanuk0.png";

            switch (day) {
                case 1: newPic = "pics/Hanuk1.png"; break;
                case 2: newPic = "pics/Hanuk2.png"; break;
                case 3: newPic = "pics/Hanuk3.png"; break;
                case 4: newPic = "pics/Hanuk4.png"; break;
                case 5: newPic = "pics/Hanuk5.png"; break;
                case 6: newPic = "pics/Hanuk6.png"; break;
                case 7: newPic = "pics/Hanuk7.png"; break;
                case 8: newPic = "pics/Hanuk8.png"; break;
                default: newPic = "pics/Hanuk0.png"; break;
            }
            show(newPic);
        }
    </script> <style>
        img{
            height:600px;
            text-align:center;
            margin:75px;
        }
        h1{
            text-align:center;
            color:red;
        }
    </style>
    <script>
        function show(newPic) {
            pic.src = newPic;
        }
        function start() {
            var day = parseInt(prompt("כמה נרות להדליק?", 0));
            var newPic = "pics/Hanuk0.png";

            switch (day) {
                case 1: newPic = "pics/Hanuk1.png"; break;
                case 2: newPic = "pics/Hanuk2.png"; break;
                case 3: newPic = "pics/Hanuk3.png"; break;
                case 4: newPic = "pics/Hanuk4.png"; break;
                case 5: newPic = "pics/Hanuk5.png"; break;
                case 6: newPic = "pics/Hanuk6.png"; break;
                case 7: newPic = "pics/Hanuk7.png"; break;
                case 8: newPic = "pics/Hanuk8.png"; break;
                default: newPic = "pics/Hanuk0.png"; break;
            }
            show(newPic);
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <br /><br/>
    <h1>
        חנוכיה של בן
    </h1>
    <br />
    <center>
        <img src="pics/Hanuk0.png" 
             id="pic"
             alt="חנוכיה"
             onclick="start()"/>
        
    </center>

</asp:Content>
