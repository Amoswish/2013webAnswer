using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Num5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindData(GridView1);
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindData(GridView1);

        }
        public void bindData(GridView GridView1)
        {
            SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString);
            SqlCommand com = new SqlCommand("select CategoryID,CategoryName,Description from Categories", MyConnection);
            SqlDataAdapter adapter = new SqlDataAdapter("select CategoryID,CategoryName,Description from Categories", MyConnection);
            DataSet dt = new DataSet();
            adapter.Fill(dt);
            try
            {
                MyConnection.Open();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex) { }
            finally
            {
                MyConnection.Close();
            }
        }
    }
}