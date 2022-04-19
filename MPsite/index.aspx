<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MPsite.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .FlexContainer{
            display:flex;
            flex-wrap: wrap; /*אפשרות לרדת מתחת לשורה אחת*/
            justify-content:space-around; /* מרחק שווה בין חלקים כולל שולים*/ 
            gap: 100px 100px; /*אנכי, אופקי*/
            align-items: center;

        }
        .Card{
             padding: .5%; /*מרווח קטן בין הבורדר*/
             flex-grow: 1; /*כמה יכול לגדול ביחס לאחרים */
             flex-basis: 16%;  /*גודל התחלתי*/
             border:1px solid;
             border-radius:10%; /*עיגול הבורדר*/
        }
        .insideCardContainer img { /*תמונות בקונטיינר*/

           max-width:100%; /*התמונות יכולות לתפוס את כל האורך*/
           border-radius:10%;/*עיגול התמונות*/
         
        }
        .insideCardContainer h4 { /* כותרת 4   */
            text-align:center;
            font-size:1.5rem;
            margin-top:auto;
            color:black;
        }
        hr{
            width:80%;
        }
        body{
            margin-left:15%;
            margin-right:15%;
        }
        h1{
            text-align:center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>דף הבית</h1>
    <hr />
    <br />
    <div class="FlexContainer">       
        <div class="Card">
            <a href="RecepiePages/StarterDishAll" class="insideCardContainer">
                <img src="pics/ChickenNuggets.jpg" />
                <h4> מנות קטנות </h4>
            </a>
        </div>
        <div class="Card">
            <a href="RecepiePages/MainDishAll.aspx" class="insideCardContainer">
                <img src="pics/Pizza.jpg" />
                <h4> מנות גדולות  </h4>
            </a>
        </div>
        <div class="Card">
            <a href="RecepiePages/DesertDishAll.aspx" class="insideCardContainer">
                <img src="pics/CrunchChocolate.jpg" />
                <h4> קינוחים </h4>
            </a>    
        </div>    
    </div>
</asp:Content>
