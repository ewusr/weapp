using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Data.Sql;
using System.Data.SqlClient;


namespace WebApplication3
{
    public partial class aaa : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=evaluation;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Question ", con);
            SqlDataAdapter sqa = new SqlDataAdapter(cmd);
          
            DataTable dt = new DataTable();

      
           


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            //for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                TextBox qtytxtbox = (TextBox)(FindControl("TextBox"+(1).ToString()));
                GridView1.Rows[0].Cells[2].Text = qtytxtbox.Text;
            }
        }

        
    }
}