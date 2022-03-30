<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="MPsite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img{
            height:25px;
            width:auto;
        }
        table{
            margin-left:auto;
            margin-right:auto;
        }
        input{
            text-align:center;
            font-size:20px;
        }
    </style>
    <script>
        function getNum(n) {
            var num;
            if (n == 1)
                num = parseInt(Math.random() * 10) + 10;
            else
                num = parseInt(Math.random() * 10) + 1;
            return num;
        }
        function check() {

            var incorrect = "<img src='pics/Crossmark.png' />";
            var correct = "<img src='pics/Checkmark.png' / >";
            var res = document.getElementById("resPlus").value;
            if (res == n1+n2)
                document.getElementById("msgPlus").innerHTML = correct;
            else
                document.getElementById("msgPlus").innerHTML = incorrect;

            var res = document.getElementById("resMinus").value;
            if (res == n1 - n2)
                document.getElementById("msgMinus").innerHTML = correct;
            else
                document.getElementById("msgMinus").innerHTML = incorrect;

            var res = document.getElementById("resMult").value;
            if (res == n1 * n2)
                document.getElementById("msgMult").innerHTML = correct;
            else
                document.getElementById("msgMult").innerHTML = incorrect;

            var res = document.getElementById("resDiv").value;
            if (res == n1 / n2)
                document.getElementById("msgDiv").innerHTML = correct;
            else
                document.getElementById("msgDiv").innerHTML = incorrect;

            var res = document.getElementById("resRemain").value;
            if (res == n1 % n2)
                document.getElementById("msgRemain").innerHTML = correct;
            else
                document.getElementById("msgRemain").innerHTML = incorrect;
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="ltr" style="text-align:center">
    <table>
        <tr>
            <td><input type="text" size="10" id="num1" disabled/></td>
            <td>+</td>
            <td><input type="text" size="10" id="num2" disabled/></td>
            <td>=</td>
            <td><input type="text" size="10" id="resPlus"/></td>
            <td><span id="msgPlus"></span></td>
        </tr>
        <tr>
            <td><input type="text" size="10" id="num3" disabled/></td>
            <td>-</td>
            <td><input type="text" size="10" id="num4" disabled/></td>
            <td>=</td>
            <td><input type="text" size="10" id="resMinus"/></td>
            <td><span id="msgMinus"></span></td>
        </tr>
        <tr>
            <td><input type="text" size="10" id="num5" disabled/></td>
            <td>*</td>
            <td><input type="text" size="10" id="num6" disabled/></td>
            <td>=</td>
            <td><input type="text" size="10" id="resMult"/></td>
            <td><span id="msgMult"></span></td>
        </tr>
        <tr>
            <td><input type="text" size="10" id="num7" disabled/></td>
            <td>/</td>
            <td><input type="text" size="10" id="num8" disabled/></td>
            <td>=</td>
            <td><input type="text" size="10" id="resDiv"/></td>
            <td><span id="msgDiv"></span></td>
        </tr>
        <tr>
            <td><input type="text" size="10" id="num9" disabled/></td>
            <td>%</td>
            <td><input type="text" size="10" id="num10" disabled/></td>
            <td>=</td>
            <td><input type="text" size="10" id="resRemain"/></td>
            <td><span id="msgRemain"></span></td>
        </tr>
    </table>
     <script>
         var n1 = getNum(1);
         var n2 = getNum(2);

         document.getElementById("num1").value = n1;
         document.getElementById("num2").value = n2;
         document.getElementById("num3").value = n1;
         document.getElementById("num4").value = n2;
         document.getElementById("num5").value = n1;
         document.getElementById("num6").value = n2;
         document.getElementById("num7").value = n1;
         document.getElementById("num8").value = n2;
         document.getElementById("num9").value = n1;
         document.getElementById("num10").value = n2;

         
     </script>
        </div>
    <center>
    <input type="button" value=" בדוק " onclick="check();" />
    </center>
</asp:Content>
