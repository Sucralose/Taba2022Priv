<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="September.aspx.cs" Inherits="MPsite.September" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<title>לוח שנה - ספטמבר</title>
    <style>
       
        h1 {
            text-align: center;
            font-size:60px;
        }
        img{
            height:50px;
            width:auto;
        }
        table {
            margin: 0px auto;
            border: solid;
            text-align: center;
            border-collapse: collapse
        }

        th {
            border: solid;
            text-align: center;
            width: 125px;
            height: 50px;
            font-size: 30px;
            background-color: lightsteelblue;
            font-family: 'Comic Sans MS';
        }

        td {
            border: solid;
            text-align: center;
            width: 125px;
            height: 50px;
            font-size: 25px;
            font-family: 'Comic Sans MS';
            background-color:peachpuff;
        }
        .shabat{
            background-color:paleturquoise;
        }
        .roshHashana{
            background-color:indianred;
        }
        .Kippur{
            background-color:mintcream;
        }
        .sockut{
            background-color:greenyellow;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <h1>ספטמבר</h1>
    <table>
        <tr>
            <th>ראשון</th>
            <th>שני</th>
            <th>שלישי</th>
            <th>רביעי</th>
            <th>חמישי</th>
            <th>שישי</th>
            <th>שבת</th>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td class="shabat">
                <br />
                <a href="Shabat.aspx">
                    4<br />
                    <img src="pics/Shabat.png" />
                </a>
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td class="roshHashana">
                <a href="RoshHashana.aspx">
                    6<br />
                    <img src="pics/newYear.png" /><br />
                    ראש השנה
                </a>
            </td>
            <td class="roshHashana">
                <a href="RoshHashana.aspx">
                    7<br />
                    <img src="pics/newYear.png" /><br />
                    ראש השנה
                </a>
            </td>
            <td class="roshHashana">
                <a href="RoshHashana.aspx">
                    8<br />
                    <img src="pics/newYear.png" /><br />
                    ראש השנה
                </a>
            </td>
            <td>
                9<br />
                צום גדליה
            </td>
            <td>10</td>
            <td class="shabat">
                <br />
                <a href="Shabat.aspx">
                    11<br />
                    <img src="pics/Shabat.png" />
                </a>
            </td>
        </tr>
        <tr>
            <td>12</td>
            <td>13</td>
            <td>14</td>
            <td class="Kippur">
                <a href="Kippur.aspx">
                    15<br />
                    <img src="pics/Kippur.png" /><br />
                    ערב יום כיפור
                </a>
            </td>
            <td class="Kippur">
                <a href="Kippur.aspx">
                    16<br />
                    <img src="pics/Kippur.png" /><br />
                    יום כיפור
                </a>
            </td>
            <td>17</td>
            <td class="shabat">
                <br />
                <a href="Shabat.aspx">
                    4<br />
                    <img src="pics/Shabat.png" />
                </a>
            </td>
        </tr>
        <tr>
            <td>19</td>
            <td class="sockut">
                <a href="Sockut.aspx">
                    20<br />
                    <img src="pics/Sockut.png" /><br />
                    ערב סוכות
                </a>
            </td>
            <td class="sockut">
                <a href="Sockut.aspx">
                    21<br />
                    <img src="pics/Sockut.png" /><br />
                    סוכות
                </a>
            </td>
            <td class="sockut">
                <a href="Sockut.aspx">
                    22<br />
                    <img src="pics/Sockut.png" /><br />
                    סוכות
                </a>
            </td>
            <td class="sockut">
                <a href="Sockut.aspx">
                    23<br />
                    <img src="pics/Sockut.png" /><br />
                    סוכות
                </a>
            </td>
            <td class="sockut">
                <a href="Sockut.aspx">
                    24<br />
                    <img src="pics/Sockut.png" /><br />
                    סוכות
                </a>
            </td>
            <td class="shabat">
                <br />
                <a href="Shabat.aspx">
                    4<br />
                    <img src="pics/Shabat.png" />
                </a>
            </td>
        </tr>
        <tr>
            <td class="sockut">
                <a href="Sockut.aspx">
                    26<br />
                    <img src="pics/Sockut.png" /><br />
                    סוכות
                </a>
            </td>
            <td class="sockut">
                <a href="Sockut.aspx">
                    27<br />
                    <img src="pics/Sockut.png" /><br />
                    סוכות
                </a>
            </td>
            <td>
                28<br />
                שמחת תורה
            </td>
            <td>
                29<br />
                אסרו חג
            </td>
            <td>30</td>
            <td></td>
            <td class="shabat"></td>
        </tr>
    </table>

</asp:Content>
