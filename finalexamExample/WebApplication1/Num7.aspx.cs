using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Num7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var count = Application.Count;
            Label1.Text = count.ToString();
            
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Application.Lock();
            Application.Add("user",TextBox1.Text);
            var count = Application.Count;
            Label1.Text = count.ToString();
            Application.UnLock();
        }
    }
}