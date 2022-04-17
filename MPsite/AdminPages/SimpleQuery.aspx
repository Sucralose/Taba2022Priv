<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SimpleQuery.aspx.cs" Inherits="MPsite.SimpleQuery" %>
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
<script>
    
    function detectField() {
        let fieldVal = document.getElementById("field").value;
        
            switch (fieldVal) {
                case "gender":
                    document.getElementById("query").innerHTML =
                        "<input type='radio' name='value' value='male' checked='checked' /> זכר" +
                        "<input type='radio' name='value' value='female' /> נקבה"
                    break;
                case "yearBorn":
                    let yearStr = "<select name='value'> <option value='0'> בחר שנה </option>"
                    let currentYear = new Date().getFullYear();
                    let fromYear = currentYear - 60;
                    let toYear = currentYear - 10;

                    for (let i = fromYear; i < toYear; i++) {
                        yearStr += "<option value= ' " + i + "'>" + i + "</option>/n";
                    }
                    document.getElementById("query").innerHTML = yearStr + "</select>"
                    break;
                case "prefix":
                    let prefixStr = "<select name='value'>";

                    prefixStr += '<option value="050">050</option>';
                    prefixStr += '<option value="052">052</option>';
                    prefixStr += '<option value="054">054</option>';
                    prefixStr += '<option value="058">058</option>';

                    prefixStr += "</select>";

                    document.getElementById("query").innerHTML = prefixStr;
                    break;
                case "hobby":
                    let hobbyStr = "<select name='value'>;";

                    hobbyStr += "<option value='1'>Computers</option>";
                    hobbyStr += "<option value='2'>Movies</option>";
                    hobbyStr += "<option value='3'>Cooking</option>";
                    hobbyStr += "<option value='4'>Music</option>";
                    hobbyStr += "<option value='5'>TV</option>";

                    hobbyStr += "</select>";
                    document.getElementById("query").innerHTML = hobbyStr;
                    break;
                case "city":
                    let cityStr = "<select name='value'>"

                    cityStr += '<option value="ירושלים">ירושלים</option>';
                    cityStr += '<option value="תל-אביב">תל-אביב</option>';
                    cityStr += ' <option value="חיפה">חיפה</option>';
                    cityStr += ' <option value="ראשון-לציון">ראשון-לציון</option>';
                    cityStr += '<option value="פתח-תקווה">פתח-תקווה</option>';
                    cityStr += '<option value="אשדוד">אשדוד</option>';
                    cityStr += ' <option value="נתניה">נתניה</option>';
                    cityStr += ' <option value="באר-שבע">באר-שבע</option>';
                    cityStr += '<option value="אשקלון">אשקלון</option>';
                    cityStr += '<option value="מודיעין" selected> מודיעין </option>';
                    cityStr += ' <option value="לוד">לוד</option>';
                    cityStr += '   <option value="אילת">אילת</option>';
                    cityStr += ' <option value="רמלה">רמלה</option>';
                    cityStr += '<option value="חולון">חולון</option>';
                    cityStr += '<option value ="צפון" >צפון</option>';
                    cityStr += '<option value ="דרום">דרום</option>';
                    cityStr += '<option value="מרכז">מרכז</option>';

                    cityStr += '</select>';

                    document.getElementById("query").innerHTML = cityStr;
                    break;
                default:
                    document.getElementById("query").innerHTML = "<input type='text' name='value' />";
                    break;
            }

    }
    


</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <% if (Session["admin"].ToString() == "yes"){%>
          <h1>הצגת נתונים לפי חתך</h1>
    <form method="post" runat="server"> 
        <select name="field" id="field" onclick="detectField();">

            <option value="lastName">שם משפחה</option>
            <option value="firstName">שם פרטי</option>
            <option value="email">דואר אלקטרוני</option>
            <option value="gender">מגדר</option>
            <option value="yearBorn">שנת לידה</option>
            <option value="prefix">קידומת טלפון</option>
            <option value="phone">טלפון</option>
            <option value="city">עיר מגורים</option>
            <option value="hobby">תחביב</option>
        </select>

        <div id="query"></div>
        <br /><br />
        <input type="submit" name="submit" value="חפש" />
    </form>
        <h2> <%= sqlSelect %> </h2>
    
        <table style="margin:0px auto;"border="1">
            <%=st %>
        </table>
    <%} %>
        <h3><%=msg %></h3>
   
</asp:Content>
