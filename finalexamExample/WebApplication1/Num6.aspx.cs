using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Num6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            string a = ListBox1.SelectedValue;
            switch (a) {
                case "1":
                    ListBox2.Items.Add("beijing");
                    break;
                case "2":
                    ListBox2.Items.Add("shanghai");
                    break;
                case "3":
                    ListBox2.Items.Add("tianjin");
                    break;
                case "4":
                    ListBox2.Items.Add("chongqing");
                    break;

            }
        }
    }
}