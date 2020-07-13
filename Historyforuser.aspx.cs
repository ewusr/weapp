using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;
using System.Data;
using System.Configuration;
namespace WebApplication3
{
    public partial class Historyforuser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=desibrands;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT Name fROM checklogin", con);



                con.Open();


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    Label5.Text = (reader.GetString(0));



                }
                reader.Close();
                con.Close();
                refrs();
            }
            catch (Exception ex)
            {
                error.Text = ex.Message;


            }
        }
        void refrs()
        {
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Orderlist where email='"+ Label5 .Text+ "' ", con);

                SqlDataAdapter sqa = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                sqa.Fill(dt);


                GridView1.DataSource = dt;
                GridView1.DataBind();


                con.Close();


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}