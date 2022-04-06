<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="loginAdmin.aspx.cs" Inherits="MPsite.loginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        table{
            margin-left:auto;
            margin-right:auto;
            border: 1px solid black;
        }
        .informationBox{
          border: 1px solid black;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <form method="post" runat="server"> 
        <h1 style="text-align:center;">כניסת מנהל</h1>
        <table>
            <tr>
                <td class="informationBox">שם משתמש:</td>
                <td class="informationBox"><input type="text" name="mName" id="mName"/></td>
            </tr>
            <tr>
                <td class="informationBox">סיסמא:</td>
                <td class="informationBox"><input type="password" name="pw" id="pw"/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="submit" value=" התחבר "/>
                </td>
            </tr>

        </table>
    </form>

</asp:Content>
