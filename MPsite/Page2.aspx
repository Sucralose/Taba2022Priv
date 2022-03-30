<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="MPsite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        function checkGrd() {
            var grd = document.getElementById("grd").value;
            if (grd >= 0 && grd <= 100) {
                grd = parseInt(grd) + 5;
                grd = parseInt(grd / 10);
                switch (grd) {
                    case 10: document.getElementById("res").innerHTML = "מצוין"; break;
                    case 9: document.getElementById("res").innerHTML = "יפה מאוד"; break;
                    case 8: document.getElementById("res").innerHTML = "טוב"; break;
                    case 7: document.getElementById("res").innerHTML = "כמעט טוב"; break;
                    case 6: document.getElementById("res").innerHTML = "מספיק"; break;
                    default: document.getElementById("res").innerHTML = "לא מספיק"; break;
                }
            } else {
                document.getElementById("res").innerHTML = "הציון לא תקין";
            }
            

        }

    </script>
    <style>
        p{
            font-size=30px;
        }
        input{
            font-size=25px;
            text-align:center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
      <p>הכנס את הציון שקיבלת</p>
     <input type="text" size="10" id="grd"/>
     <input type="button" value=" בדוק " onclick="checkGrd();" />
     <br />
     <p id="res"></p>
    </div>
</asp:Content>
