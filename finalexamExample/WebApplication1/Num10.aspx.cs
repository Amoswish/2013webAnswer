using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Num10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LENOVO-PC\\SQLEXPRESS;Initial Catalog=Northwind;Integrated Security=True");
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString);
            SqlCommand com = new SqlCommand("select * from Employees where EmployeeID = @productName", con);
            com.Parameters.Add("@productName", SqlDbType.Int).Value = 2;
            SqlDataAdapter adapter = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            con.Open();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}
