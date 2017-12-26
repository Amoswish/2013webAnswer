using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Num8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = new HttpCookie("user");
            if (Response.Cookies["user"] != null) {
                Label1.Text =Request.Cookies["user"].Value;
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            HttpCookie user = new HttpCookie("user");
            string username = TextBox1.Text;
            user.Expires = DateTime.Now.AddDays(1);
            user.Value = username;
            Response.Cookies.Add(user);
        }
    }
}