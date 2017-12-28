using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Num12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedValue;
            switch (selectedValue) { 
                case "1":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("凌源");
                    DropDownList2.Items.Add("沈阳");
                    DropDownList2.Items.Add("大连");
                    break;
                case "2":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("有日翻");
                    DropDownList2.Items.Add("臭屁");
                    DropDownList2.Items.Add("右日饭");
                    break;
                case "3":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("海淀区");
                    break;
                case "4":
                    DropDownList2.Items.Clear();
                    DropDownList2.ClearSelection();
                    DropDownList2.Items.Add("西安");
                    break;

            }
        }

        protected void DropDownList1_Init(object sender, EventArgs e)
        {

            string selectedValue = DropDownList1.SelectedValue;
            switch (selectedValue)
            {
                case "1":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("凌源");
                    DropDownList2.Items.Add("沈阳");
                    DropDownList2.Items.Add("大连");
                    break;
                case "2":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("有日翻");
                    DropDownList2.Items.Add("臭屁");
                    DropDownList2.Items.Add("右日饭");
                    break;
                case "3":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("海淀区");
                    break;
                case "4":
                    DropDownList2.Items.Clear();
                    DropDownList2.ClearSelection();
                    DropDownList2.Items.Add("西安");
                    break;

            }
        }
    }
}