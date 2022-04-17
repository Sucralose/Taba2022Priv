<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="MPsite.ShowTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1{text-align:center; }
        h2{text-align:center;  direction:ltr;}
        h3{text-align:center;}
        th {text-align:center;}

        .alignCenter{text-align:center}
        .alignRight{text-align:right}
        .alignLeft{ direction:ltr; text-align:left;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <% if (Session["admin"].ToString() == "yes"){%>
     <h1>טבלת משתמשים</h1>
    <%}%>
       
        <h2> <%= sqlSelect %> </h2>

        <table style="margin:0px auto;"border="1">
            <%=st %>
        </table>
        
        <h3><%=msg %></h3>

</asp:Content>