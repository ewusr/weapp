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
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=desibrands;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Date.Text = DateTime.Now.ToString();
            refrs();
            total();
        }
        void total()
        {
            int total=0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                total += Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);
            }

            Label2.Text = "Total amout =" + total;
        }
        void refrs()
        {
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select *  from cart ", con);
                SqlDataAdapter sqa = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                sqa.Fill(dt);


                GridView1.DataSource = dt;
                GridView1.DataBind();


                con.Close();


            }
        }
        void deletecart()
        {
            con.Open();
            cmd = new SqlCommand("update products set stock=stock+1 where id=@id", con);
            cmd.Parameters.Add("id", SqlDbType.Int).Value = Convert.ToInt32(itemdid.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            error.Text = "Deleted";
            con.Open();
            cmd = new SqlCommand("delete from cart where id=@id", con);
            cmd.Parameters.Add("id", SqlDbType.Int).Value = Convert.ToInt32(Label1.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            error.Text = "Deleted";
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    Label1.Text = row.Cells[0].Text;
                    itemdid.Text = row.Cells[3].Text;






                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            deletecart();
            refrs();
            total();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
        void update()
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

              
            }
        }
        protected void Confirm_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                con.Open();
                cmd = new SqlCommand("insert into Orderlist (Name,ItemName,Price,MobileNo,Address,Date,itemid,email) values(@name,@ItemName,@price,@MobileNo,@addres,@date,@itemid,@email)", con);

                cmd.Parameters.Add("name", SqlDbType.NVarChar).Value = Name.Text;
                cmd.Parameters.Add("ItemName", SqlDbType.NVarChar).Value = GridView1.Rows[i].Cells[1].Text;
                cmd.Parameters.Add("price", SqlDbType.NVarChar).Value = GridView1.Rows[i].Cells[2].Text;
                cmd.Parameters.Add("MobileNo", SqlDbType.NVarChar).Value = Number.Text;
                cmd.Parameters.Add("addres", SqlDbType.NVarChar).Value = Address.Text;
                cmd.Parameters.Add("date", SqlDbType.NVarChar).Value = Date.Text;
                cmd.Parameters.Add("itemid", SqlDbType.NVarChar).Value = GridView1.Rows[i].Cells[3].Text;
                cmd.Parameters.Add("email", SqlDbType.NVarChar).Value = GridView1.Rows[i].Cells[4].Text;


                cmd.ExecuteNonQuery();
                con.Close();
            }
            error.Text = "Order Confirmed";

            con.Open();
            cmd = new SqlCommand("delete from cart", con);
         

            cmd.ExecuteNonQuery();
            con.Close();


            Response.Redirect("Sellpage.aspx");
           
        }
    }
}