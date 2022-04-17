<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="deleteUser.aspx.cs" Inherits="MPsite.deleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <% if (Session["admin"].ToString() == "yes"){%>
     <h1>מחיקת משתמש</h1>
    <%}%>
       
        <h2> <%= sqlDelete %> </h2>

        <table style="margin:0px auto;"border="1">
            <%=st %>
        </table>
        
        <h3><%=msg %></h3>

</asp:Content>
