<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ImageGallery.aspx.cs" Inherits="MPsite.Image_Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .imgCell{
            width:200px;
            height:200px;
        }
        .bigPicImg{
           width:400px;
           height:400px;
           
        }
        table{
            border: 1px solid;
            margin-left:auto;
            margin-right:auto;
        }
        body{
            margin-left:15%;
            margin-right:15%;
        }
    </style>
    <script>
        function picShow(picSrc) {
            bigPic.src = picSrc;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="margin:0px auto;">
        <tr>
            <td> <img src="pics/ChickenNuggets.jpg" class="imgCell" onmouseover="picShow('pics/ChickenNuggets.jpg')" /> </td>
            <td> <img src="pics/CrunchChocolate.jpg" class="imgCell" onmouseover="picShow('pics/CrunchChocolate.jpg')"/> </td>
            <td> <img src="pics/Kebab.jpg" class="imgCell" onmouseover="picShow('pics/Kebab.jpg')"/> </td>
            <td> <img src="pics/KinamonRoll.jpg" class="imgCell" onmouseover="picShow('pics/KinamonRoll.jpg')"/> </td>
        </tr>
        <tr>
            <td> <img src="pics/OrangeCake.jpg" class="imgCell" onmouseover="picShow('pics/OrangeCake.jpg')"/> </td>
            <td rowspan="2" colspan="2">
                <img src="pics/CrunchChocolate.jpg" id="bigPic" class="bigPicImg" />
            </td>
            <td> <img src="pics/Pizza.jpg" class="imgCell" onmouseover="picShow('pics/Pizza.jpg')"/> </td>
        </tr>
        <tr>
            <td> <img src="pics/RedChicken.jpg" class="imgCell" onmouseover="picShow('pics/RedChicken.jpg')"/> </td>
            <td> <img src="pics/RedCuba.jpg"  class="imgCell" onmouseover="picShow('pics/RedCuba.jpg')"/> </td>
        </tr>
        <tr>
            <td> <img src="pics/ShoitLevana.jpg" class="imgCell" onmouseover="picShow('pics/ShoitLevana.jpg')"/> </td>
            <td> <img src="pics/VegeterianSushi.jpg"  class="imgCell" onmouseover="picShow('pics/VegeterianSushi.jpg')" /> </td>
            <td> <img src="pics/Ravioli.jpg" class="imgCell" onmouseover="picShow('pics/Ravioli.jpg')"/> </td>
            <td> <img src="pics/Cookies.jpg" class="imgCell" onmouseover="picShow('pics/Cookies.jpg')"/> </td>
        </tr>
    </table>

</asp:Content>
