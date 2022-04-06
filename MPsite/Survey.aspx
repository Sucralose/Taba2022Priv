<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="MPsite.Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tableIn{
            margin: 0px auto;
            direction:rtl;
        }
        td1{
            width:100px;
            text-align:right;
            padding-right:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table border="0">
        <tr>
            <td>
            <form id="form" runat="server">
                <table class="tableIn" border="1">
                    <tr>
                        <th colspan="2" align="center"> שאלת סקר </th>
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="1" /></td>
                        <td class="td1"> אפשרות א </td> 
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="2" /></td>
                        <td class="td1"> אפשרות ב </td> 
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="3" /></td>
                        <td class="td1"> אפשרות ג </td> 
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="4" /></td>
                        <td class="td1"> אפשרות ד </td> 
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="submit" value="הצג" />
                        </td>
                    </tr>
                </table>
              
            </form>
            </td>

            <td width="600px" align="center">
                <%= str %>
            </td>
        </tr>
    </table>

</asp:Content>
