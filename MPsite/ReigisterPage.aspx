<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReigisterPage.aspx.cs" Inherits="MPsite.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        table{
            margin-left:auto;
            margin-right:auto;
            border: 1px solid black;
        }
        input{
            text-align:center;
            font-size:20px;
        }
        .message{
            text-align:center;
            display:none; 
            background-color:silver;
            font-weight:bold;
            font-size:15px;
            width:350px;
        }
    </style>

    <script>
        function checkForm() {
            
            var valid = true;
            var element, elementMessage;
            //---בדיקת תקינות שם משתמש---
            element = document.getElementById("userName").value;
            
            elementMessage = document.getElementById("mUserName");
            if (element.length < 2) {
                elementMessage.value = "שם משתמש קצר מדי או לא קיים במערכת.";
                elementMessage.style.display = "inline";
                valid = false;
            }
            else {
                elementMessage.style.display = "none";
            }
           
            //---בדיקת תקינות שם פרטי---
            element = document.getElementById("firstName").value;
            elementMessage = document.getElementById("mFirstName");
            if (element.length < 2) {
                elementMessage.value = "שם פרטי קצר מדי או לא קיים במערכת.";
                elementMessage.style.display = "inline";
                valid = false;
            } else {
                elementMessage.style.display = "none";
            }

            //---בדיקת שם משפחה---
            element = document.getElementById("lastName").value;
            elementMessage = document.getElementById("mLastName");
            if (element.length < 2) {
                elementMessage.value = "שם משפחה קצר מדי או לא קיים במערכת.";
                elementMessage.style.display = "inline";
                valid = false;
            } else {
                elementMessage.style.display = "none";
            }
            
            
            //---תקינות דוא"ל---
            element = document.getElementById("email").value;
            elementMessage = document.getElementById("mEmail");
            if (element.length < 6) { //אורך קטן ביותר למייל הוא שש
                elementMessage.value = "כתובת דוא'ל קצרה מדי או לא קיימת";
                elementMessage.style.display = "inline";
                valid = false;
            } else {
                elementMessage.style.display = "none";
            }
            
            //--תקינות מספר טלפון--
            element = document.getElementById("phoneNum").value;
             elementMessage = document.getElementById("mPhone");
            
            
            if (isNaN(element)) {
                elementMessage.value = "מספר טלפון חייב להכיל ספרות בלבד"
                elementMessage.style.display = 'inline';
                valid = false;
            } else
                {
                if (element.length != 7) {
                    elementMessage.value = "מספר טלפון חייב להכיל בדיוק 7 ספרות";
                    elementMessage.style.display = 'inline';
                    valid = false;
                } else
                {
                    elementMessage.style.display = "none";
                }
            }
            
            //תקינות סיסמה
            element = document.getElementById("pw").value;
            elementMessage = document.getElementById("mPw");
            if (element.length < 6 || element.length > 25) {
                elementMessage.value = "הסיסמה חייבת להיות בין 6 ל 25 תווים"
                elementMessage.style.display = 'inline';
                valid = false;
            } else {
                elementMessage.style.display = "none";
            }

            // אימות סיסמה
            element = document.getElementById("verifyPw").value;
            elementMessage = document.getElementById("mVerifyPw");
            if (element != document.getElementById("pw").value) {
                elementMessage.value = "הסיסמאות אינן זהות"
                elementMessage.style.display = 'inline';
                valid = false;
            } else {
                elementMessage.style.display = "none";
            }
            
            //תקינות תחביבים
            element = document.getElementsByName("hobies");
            elementMessage = document.getElementById("mHobies");
            let hobChecked = false;  
            for (let i = 1; i < element.length; i++) {
                if (element[i].checked) {
                    hobChecked = true;
                }          
            }
            if (hobChecked == false) {
                elementMessage.value = "לא נבחר תחביב";
                elementMessage.style.display = "inline";
                valid = false;

            }
            else {
                elementMessage.style.display = "none";
            }
                
            return valid;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="text-align:center;">
        <form method="post" runat="server" onsubmit="return checkForm();"> 
            <h1 style="text-align:center;"> הרשמה לאתר </h1>
            <table>
                <tr>
                    <td> שם משתמש: </td>
                    <td>
                        <input type="text" name="userName" id="userName" size="40"/>
                    </td>
                    <td>
                        <input type="text" id="mUserName" class="message" size="35" disabled="disabled" />
                    </td>
                </tr>
                <tr>
                    <td>שם פרטי:</td>
                    <td>
                         <input type="text" name="firstName" id="firstName" size="40"/>
                    </td>
                    <td>
                        <input type="text" id="mFirstName" class="message" size="35" disabled="disabled" />
                    </td>
                </tr>

                <tr>
                    <td>שם משפחה:</td>
                    <td>
                         <input type="text" name="lastName" id="lastName" size="40"/>
                    </td>
                    <td>
                        <input type="text" id="mLastName" class="message" size="35" disabled="disabled" />
                    </td>
                </tr>
                <tr>
                    <td>שנת לידה:</td>
                    <td>
                        <select name="yearBorn" id="yearBorn">
                            <%=yrBorn %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>כתובת דוא"ל:</td>
                    <td>
                        <input type="email" name="email" id="email" size="40" />
                    </td>
                    <td>
                        <input type="text" name="mEmail" id="mEmail" class="message" size="35" disabled="disabled" />
                    </td>
                </tr>
                <tr>
                    <td> מס' טלפון</td>
                    <td dir="ltr">
                        <select name ="prefix">
                            <option value="050">050</option>
                            <option value="052">052</option>
                            <option value="054">054</option>
                            <option value="058">058</option>
                        </select>

                        &nbsp;&nbsp; ━ &nbsp;&nbsp;
                        <input type="text" name="phoneNum" id="phoneNum" />
                    </td>
                    <td>
                        <input type="text" id="mPhone" size="35" class="message" disabled="disabled" />
                    </td>
                </tr>

                <tr>
                    <td> מגדר: </td>
                    <td>
                        זכר<input type="radio" name="gender" value="male"   checked/> 
                        נקבה<input type="radio" name="gender" value="female" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td> ישוב מגורים: </td>
                    <td>
                        <select name="city" id="city">
                            
                            <option value="ירושלים">ירושלים</option>
                            <option value="תל-אביב">תל-אביב</option>
                            <option value="חיפה">חיפה</option>
                            <option value="ראשון-לציון">ראשון-לציון</option>
                            <option value="פתח-תקווה">פתח-תקווה</option>
                            <option value="אשדוד">אשדוד</option>
                            <option value="נתניה">נתניה</option>
                            <option value="באר-שבע">באר-שבע</option>
                            <option value="אשקלון">אשקלון</option>
                            <option value="מודיעין" selected> מודיעין </option>
                            <option value="לוד">לוד</option>
                            <option value="אילת">אילת</option>
                            <option value="רמלה">רמלה</option>
                            <option value="חולון">חולון</option>

                            <option value ="צפון" >צפון</option>
                            <option value ="דרום">דרום</option>
                            <option value="מרכז">מרכז</option>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>תחביבים</td>
                    <td>
                    <input type="checkbox" name="hobies" value="1" />Computers
                    <input type="checkbox" name="hobies" value="2" />Movies
                    <input type="checkbox" name="hobies" value="3" />Cooking
                    <input type="checkbox" name="hobies" value="4" />Music
                    <input type="checkbox" name="hobies" value="5" />TV
                    </td>
                    <td>

                        <input type="text" id="mHobies" size="35" class="message" disabled="disabled" />

                    </td>
                </tr>
                <tr>
                    <td>סיסמה</td>
                    <td>
                        <input type="password" name="pw" id="pw" />
                    </td>
                    <td> <input type="text" id="mPw" size="35" class="message" disabled="disabled" /> </td>
                </tr>
                <tr>
                    <td>אימות סיסמה:</td>
                    <td>
                        <input type="password" name="verifyPw" id="verifyPw" />
                    </td>
                    <td> <input type="text" id="mVerifyPw" size="35" class="message" disabled="disabled" /> </td>
                </tr>
            </table>
            <input type="submit" name="submit" value=" שלח " />
        </form>
        <br />
        
    <!--    < %= st %>   --->
          
        <h3 style="direction:ltr; text-align:center"> <%= sqlMsg %> </h3>
        <h3> <%= msg %> </h3>
        </div>
   
</asp:Content>
