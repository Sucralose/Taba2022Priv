<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Animal.aspx.cs" Inherits="MPsite.Animal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /*   https://prnt.sc/1u37gzv -Color Palette   */

        h1 {
            text-align: center;
            font-family: 'Comic Sans MS';
            font-size: 55px;
            color: #8C4D00;
            text-decoration:underline;
        }
        h2 {
            font-family: 'Comic Sans MS';
            font-size: 25px;
            color: #C9A063;
            text-decoration: underline;
        }
        p {
            font-family: 'Comic Sans MS';
            font-size: 25px;
            color: #C9A063;
        }
        img {
            border-radius: 100%;
            width: 160px;
            height: 160px;
        }
        
        .animalImageDiv{
            text-align:center;
            width:100%;
            height:180px;
            margin:auto;
        }
        .returnArrowDiv {
            text-align: center;
        }
        hr {
            color: #FAF6E3;
            background-color: #FAF6E3;
            width: 1600px;
        }
        li {
            font-size: 22px;
            color: #8C4D00;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1> בעלי חיים </h1>
    <br />
    <ul style="list-style-type: circle;">
        <a href="#lion">
        <li>אריה</li> </a>

        <a href="#elephant">
        <li> פיל </li></a>

        <a href="#wolf">
        <li>זאב מצוי</li></a>

        <a href="#giraffe">
        <li>ג'ירף</li></a>

        <a href="#penguin">
        <li>פינגווין קיסרי</li> </a>

        <a href="#cat">
        <li>חתול הבית</li></a>

    </ul>
    <hr />

    <h2 id="lion"> אריה </h2>
    <p>
        אריה (שם מדעי: Panthera leo) הוא מין של טורף גדול מהסוג פנתר שבמשפחת החתוליים, והוא השני בגודלו בין בני הקבוצה דמויי חתול, אחרי תת-המין הסיבירי של הטיגריס.
        <br />
        <br />
        האריה נפוץ בעיקר ביבשת אפריקה, אך גם במדינת גוג'ראט שבהודו. הוא ניזון מאוכלי עשב שונים אותם הוא צד, וכן מפגרים. בתרבות האנושית נחשב האריה סמל לגבורה וכוח, ולכן הוצמד לו הכינוי "מלך החיות". תוחלת חייו בטבע היא בין 12 ל-18 שנים, אך בשבי הוא יכול לחיות עד 30 שנה. שמות נוספים של האריה בשפה העברית הם ליש, שחל, שחץ ולביא.[2] שם נקבת האריה הוא לביאה וגור האריות נקרא כפיר.
        <br /><a href="Lion.aspx">קרא עוד...</a>
    </p>

    <div class="animalImageDiv">
        <img src="pics/Lion1.png" alt=" Lion" />
        <img src="pics/Lion2.png" alt=" Lion" />
        <img src="pics/Lion3.png" alt=" Lion" />
    </div>
    <hr />

    <div class="returnArrowDiv">
        <a href="#top"><img src="pics/ReturnArrow.png" /></a>
        <br />
    </div>

    <h2 id="elephant"> פיל </h2>
    <p>
        פיל הוא מונח לקבוצה פוליפילטית של שלושה מיני יונקים – פיל סוואנה אפריקני, פיל יער אפריקני ופיל אסייתי – המהווים כולם את חיות היבשה הגדולות ביותר בעולם והם המינים היחידים ששרדו במשפחת הפיליים. בעבר היו מינים נוספים מהמשפחה, ביניהם הממותה, הפלאולוקסודון והסטגוטטרבלודון שאינם נחשבים לפילים רגילים.
        <br />
        <br />
        המאפיין הבולט ביותר של הפילים הוא החדק, שאיתו הפילים שותים, אוכלים ומתרחצים. מפיהם בולטים שני חטי שנהב שהפכו אותם למטרה לציד רב שהביא לפגיעה קשה בהם. שני מיני הפיל האפריקני הם במצב שימור פגיע או ללא נתונים והאסייתי בסכנת הכחדה.
        <br /><a href="Elephant.aspx">קרא עוד...</a>
    </p>

    <div class="animalImageDiv">
        <img src="pics/Elephant1.png" alt=" Elephant" />
        <img src="pics/Elephant2.png" alt=" Elephant" />
        <img src="pics/Elephant3.png" alt=" Elephant" />
    </div>
    <hr />
    <div class="returnArrowDiv">
        <a href="#top"><img src="pics/ReturnArrow.png" /></a>
        <br />
    </div>

    <h2 id="wolf"> זאב מצוי </h2>
    <p>
        זאב מצוי או זאב אפור (שם מדעי: Canis lupus) הוא מין טורף בסוג כלב שבסדרת הטורפים, אבי כלב הבית. זהו בעל החיים הגדול ביותר במשפחת הכלביים.
        <br />
        <br />
        הזאבים בעלי תפוצה גאוגרפית רחבה ביותר ברחבי האזור ההולארקטי, לאורך אמריקה הצפונית ואירואסיה. הם חיים בלהקות הנודדות יחד בחיפושם אחרי טרף.
        <br /><a href="Wolf.aspx">קרא עוד...</a>
    </p>

    <div class="animalImageDiv">
        <img src="pics/Wolf3.png" alt=" Wolf" />
        <img src="pics/Wolf1.png" alt=" wolf" />
        <img src="pics/Wolf2.png" alt=" Wolf" />
    </div>
    <hr />
    <div class="returnArrowDiv">
        <a href="#top"><img src="pics/ReturnArrow.png" /></a>
        <br />
    </div>


    <h2 id="giraffe"> ג'ירף </h2>
    <p>
        ג'ירף או בשמו העממי ג'ירפה (שם מדעי: Giraffa) הוא סוג פרסתן מעלה גירה ממשפחת הג'ירפיים, הכולל ארבעה מינים. הג'ירף נחשב לחיה היבשתית הגבוהה בעולם.[1]
        <br />
        <br />

        לג'ירף רגליים וצוואר ארוכים מאוד. גובה כתפיו כ-3 מטרים מעל הקרקע וגובה ראשו כ־5.3 מטרים (17 רגל) מעל פני הקרקע. צבעו חום-צהוב עם כתמים כהים וגדולים. צבע זה משמש לו בתור הסוואה מאויביו. ראיית הג'ירף חדה, והוא מיטיב לרוץ ולהימלט מאויביו במהירות של עד 60–65 קמ"ש. במצחו בין שתיים לחמש קרניים. בכל רגל של הג'ירף קיים זוג אצבעות אחד בלבד. כמו אצל כמעט כל היונקים, גם לג'ירף יש שבע חוליות צוואר, רק שבמהלך האבולוציה הן התארכו מאוד.
        <br />
        <a href="Giraffe.aspx">קרא עוד...</a>
    </p>

    <div class="animalImageDiv">
        <img src="pics/Giraffe3.png" alt=" Giraffe" />
        <img src="pics/Giraffe1.png" alt=" Girafffe" />
        <img src="pics/Giraffe2.png" alt=" Giraffe" />
    </div>
    <hr />
    <div class="returnArrowDiv">
        <a href="#top"><img src="pics/ReturnArrow.png" /></a>
        <br />
    </div>

    <h2 id="penguin"> פינגווין </h2>
    <p class="animalImageDiv">
        פינגווין קיסרי (שם מדעי: Aptenodytes forsteri) הוא מין של פינגווין אנדמי לאנטארקטיקה. הוא משלושת המינים היחידים ביבשת זו, לצד פינגווין אדלי ופינגווין מלכותי, והוא הגבוה והכבד שבפינגווינים. הזכר והנקבה דומים בניצוי ובגודל: גובהם עשוי להגיע ל-122 ס"מ, ומשקלם נע בין 22 ל 45 קילוגרמים. ראשו וכנפיו של הפינגווין הקיסרי שחורים, הבטן לבנה, הגב אפור כחלחל והמקור ורוד ארגמני. בצדי צווארו יש שתי רצועות זהובות. כיתר הפינגווינים, הוא חסר יכולת תעופה, ובמקום זאת גופו מותאם לשחייה: כנפיו קשיחות ושטוחות ומבנה גופו הידרו-דינמי.
        <br />
        <br />
        הפינגווין הקיסרי ניזון בעיקר מדגים, אך גם מסרטנאים כגון קריל, ומסילוניות, כגון דיונונים. הפינגווין יכול לצלול עד לעומק של כ-530 מטרים ולהחזיק את נשימתו כ-18 דקות כשהוא צד מזון. גופו של הפינגווין מותאם במיוחד לכך: יש לו המוגלובין בעל מבנה ייחודי, שמאפשר לפינגווין לתפקד ברמות חמצן נמוכות, עצמותיו אינן חלולות (בשונה משאר מיני העופות) על מנת להפחית את הבארוטראומה, ובשעת הצורך, הפינגווין יכול להפחית את המטבוליזם שלו ולהשבית איברים שאינם הכרחיים.
        <br />
        <a href="Penguin.aspx">קרא עוד...</a>
    </p>
    <br/><br/><br/><br/><br/>
   
    <div class="animalImageDiv">
        <img src="pics/Penguin1.png" alt=" Penguin" />
        <img src="pics/Penguin2.png" alt="Penguin" />
        <img src="pics/Penguin3.png" alt=" Penguin" />
    </div>
    <hr />
    <div class="returnArrowDiv">
        <a href="#top"><img src="pics/ReturnArrow.png" /></a>
        <br />
    </div>

    <h2 id="cat"> חתול </h2>
    <p>
        חתול הבית (שם מדעי: Felis silvestris catus) הוא יונק טורף מבוית, מהסוג חתול ממשפחת החתוליים. החתול נפוץ בכל יבשות העולם מלבד באנטארקטיקה. משערים כי מוצאו מחתול הבר. החתול הוא טורף לילי הצד מכרסמים, ציפורים ודגים. נכון ל-2009, החתול הוא חיית המחמד הנפוצה ביותר בעולם, ומספר החתולים הביתיים נאמד בכ-600 מיליון.[1] החתול חי בדרך כלל בבדידות, למעט אינטראקציה מזדמנת עם בני מינו.
        <br /><a href="Cat.aspx" style="text-size-adjust:10px;">קרא עוד...</a>
    </p>

    <div class="animalImageDiv">
        <img src="pics/Cat3.png" alt=" Cat" />
        <img src="pics/Cat1.png" alt=" Cat" />
        <img src="pics/Cat2.png" alt=" Cat" />
    </div>
    <hr />
    <div class="returnArrowDiv">
        <a href="#top"><img src="pics/ReturnArrow.png" /></a>
        <br />
    </div>

</asp:Content>
