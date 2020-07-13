using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

namespace WebApplication3
{
  
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-28MJKFV;Initial Catalog=desibrands;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("delete from checklogin", con);
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            cmd = new SqlCommand("delete from cart", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}