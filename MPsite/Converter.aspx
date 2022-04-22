<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Converter.aspx.cs" Inherits="MPsite.WeightConverter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            margin-left:15%;
            margin-right:15%;
        }
    </style>
    <script>
        function detectField() {
            let fieldVal = document.getElementById("field").value;
            switch (fieldVal) {

                case "GlobalSizes":

                    document.getElementById("selectionOption").innerHTML =
                        "<input   name='amount' />" +
                        "<select name='measure'>" +
                        '<option value="cup">כוס</option>' +
                        '<option value="spoon">כף</option>' +
                        '<option value="teaspoon">כפית</option>' +
                        "</select>"
                    break;

                case "DryMaterials":
                    document.getElementById("selectionOption").innerHTML =
                        "<input   name='amount' />" +
                        "<select name='measure'>" +
                        '<option value="cup">כוס</option>' +
                        '<option value="spoon">כף</option>' +
                        "</select>" +
                        "<select name='type'>" +
                        '<option value="whiteFlour">קמח לבן או תופח</option>' +
                        '<option value="fullFlour">קמח מלא</option>' +
                        '<option value="coco">קקאו</option>' +
                        '<option value="sugar">סוכר לבן</option>' +
                        '<option value="sugarBrown">סוכר חום</option>' +
                        '<option value="sugarPowder">אבקת סוכר</option>' +
                        '<option value="salt">מלח</option>' +
                        "</select>" 
                    break;

                case "Powders":
                    document.getElementById("selectionOption").innerHTML =
                        "<input   name='amount' />" +
                        "<select name='measure'>" +
                        '<option value="spoon">כף</option>' +
                        '<option value="teaspoon">כפית</option>' +
                        "</select>" +
                        "<select name='type'>" +
                        "<option value='bakingPowder'>אבקת אפייה</option>" +
                        "<option value='bakingSoda'>סודה לשתייה</option>" +
                        "<option value='shmarim'>שמרים יבשים </option>" +
                        "</select>"
                    break;


                case "Oils":
                    document.getElementById("selectionOption").innerHTML =
                        "<input name='amount' />" +
                        '<input name="measure" value="כוס" disabled="disabled" />' +
                        "<select name='type'>" +
                        "<option value='butter'>חמאה</option>" +
                        "<option value='oil'>שמן</option>" +
                        "<option value='coocnutOil'>קוקוס </option>" +
                        "</select>"
                break;
            }
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>ממיר מידות ומשקלים</h2>
     <form method="post" runat="server"> 
        <select name="field" id="field" onclick="detectField();">

            <option value="GlobalSizes">סט מידות עולמי</option>
            <option value="DryMaterials">חומרים יבשים</option>
            <option value="Powders">אבקות ושמרים</option>
            <option value="Oils">שמנים</option>
        </select>
         <div id="selectionOption"> </div>
        <br /><br />
        <input type="submit" name="submit" value="חשב" />
    </form>
     <h4><%=msg %></h4>

    <h3>סט מידות אוניברסלי</h3>
    <p>
        1 כוס = 240 מ"ל
        <br />
        1 כף = 15 מ"ל
        <br />
        1 כפית = 5 מ"ל
    </p>
    <br />
    <h3>חומרים יבשים</h3>
    <p>
        1 כוס קמח לבן או תופח = 140 גרם | 1 כף = 10 גרם
        <br />
        1 כוס  קמח מלא  = 125 גרם | 1 כף = 8 גרם
        <br />
        1 כוס קקאו = 140 גרם | 1 כף = 10 גרם
        <br />
        1 כוס אבקת סוכר = 120 גרם| 1 כף = 8 גרם
        <br />
        1 כוס סוכר לבן = 200 גרם  |  1 כף = 12 גרם
        <br />
        1 כוס דחוסה סוכר חום = 240 גרם |  1 כף = 15 גרם
        <br />
        1 כוס מלח = 100 גרם | 1 כף מלח = 6 גרם
        <br />
        *כוס קמח תופח= כוס קמח לבן+כפית אבקת אפייה
    </p>
    <br />
    <h3>אבקות ושמרים</h3>
    <p>
        1 כף אבקת אפייה = 10 גרם | 1 כפית = 4 גרם
        <br />
         כף סודה לשתייה = 10 גרם | 1 כפית = 4 גרם
        <br />
        1 כף שמרים יבשים = 10 גרם | 1 כפית = 4 גרם
        <br />
        * ניתן להמיר שמרים יבשים בטריים בהכפלה ב-3:
1 גרם שמרים יבשים = 3 גרם שמרים טריים
    </p>
    <br />
    <h3>שמנים</h3>
    <p>
        1 כוס חמאה = 240 גרם
        <br />
        1 כוס שמן = 200 גרם
        <br />
        1 כוס שמן קוקוס = 200 גרם
    </p>
</asp:Content>
