using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MPsite
{
    public partial class WeightConverter : System.Web.UI.Page
    {
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string field = Request.Form["field"];
                string amount = Request.Form["amount"];
                string measure = Request.Form["measure"];
                string type = Request.Form["type"];

                int calculated;

                if (field == "GlobalSizes")
                {
                    if (measure == "cup")
                    {
                        calculated = int.Parse(amount) * 240;
                    }
                    else
                    {
                        if (measure == "spoon")
                        {
                            calculated = int.Parse(amount) * 15;
                        }
                        else
                        {
                            calculated = int.Parse(amount) * 5;
                        }
                    }
                    msg = $"<h3> {calculated} מיליליטרים </h3>";
                }

                if (field== "Powders")
                {
                    if(measure == "spoon")
                    {
                        calculated = int.Parse(amount) * 10;
                    }
                    else
                    {
                        calculated = int.Parse(amount) * 4;
                    }
                    msg = $"<h3> {calculated} גרם </h3>";
                }

                if (field == "Oils")
                {
                    if(type== "oil" || type=="coconutOil")
                    {
                        calculated = int.Parse(amount) * 200;
                    }
                    else
                    {
                        calculated = int.Parse(amount) * 240;
                    }
                    msg = $"<h3> {calculated} גרם </h3>";
                }

                if (field == "DryMaterials")
                {
                    
                    if (measure == "cup")
                    {
                        if (type == "whiteFlour" || type == "coco")
                        {
                            calculated = int.Parse(amount) * 140;
                        }
                        else
                        {
                            if(type== "fullFlour")
                            {
                                calculated = int.Parse(amount) * 125;
                            }
                            else
                            {
                                if (type == "sugar")
                                {
                                    calculated = int.Parse(amount) * 200;
                                }
                                else
                                {
                                    if(type== "sugarPowder")
                                    {
                                        calculated = int.Parse(amount) * 120;
                                    }
                                    else
                                    {
                                        if (type == "sugarBrown")
                                        {
                                            calculated = int.Parse(amount) * 240;
                                        }
                                        else
                                        {
                                            calculated = int.Parse(amount) * 100;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    else
                    {
                        if (type == "whiteFlour" || type == "coco")
                        {
                            calculated = int.Parse(amount) * 10;
                        }
                        else
                        {
                            if (type == "fullFlour")
                            {
                                calculated = int.Parse(amount) * 8;
                            }
                            else
                            {
                                if (type == "sugar")
                                {
                                    calculated = int.Parse(amount) * 12;
                                }
                                else
                                {
                                    if (type == "sugarPowder")
                                    {
                                        calculated = int.Parse(amount) * 8;
                                    }
                                    else
                                    {
                                        if (type == "sugarBrown")
                                        {
                                            calculated = int.Parse(amount) * 15;
                                        }
                                        else
                                        {
                                            calculated = int.Parse(amount) * 6;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    msg = $"<h3> {calculated} גרם </h3>";
                }
            }
        }
    }
}