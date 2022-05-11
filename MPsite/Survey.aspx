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
        .tdCenter{
            margin: 0px auto;
            direction:rtl;
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
                        <th colspan="2" align="center"> כמה פעמים את\ה אוכל בשר בשבוע </th>
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="1" /></td>
                        <td class="td1"> כל יום </td> 
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="2" /></td>
                        <td class="td1"> כ4-6 ימים בשבוע </td> 
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="3" /></td>
                        <td class="td1"> פחות מ4 פעמים בשבוע </td> 
                    </tr>
                    <tr>
                        <td><input type="radio" name="surv" value="4" /></td>
                        <td class="td1"> כלל לא </td> 
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="submit" value="הצג" />
                        </td>
                    </tr>

                </table>
              
            </form>
            </td class="tdCenter">

            <td class = "align " width="600px" align="center">
                <%= str %>
            </td>
            
        </tr>
    </table>

</asp:Content>
