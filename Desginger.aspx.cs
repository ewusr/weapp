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

namespace WebApplication3
{
   
    public partial class Desginger : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=desibrands;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                refresh();
                //  emailid();

                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("select * from Products ", con);
                    SqlDataAdapter sqa = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    sqa.Fill(dt);


                    GridView1.DataSource = dt;
                    GridView1.DataBind();


                    con.Close();


                }
            }
        }
        void savedata()
        {
            //try
            //{

            if (FileUpload1.HasFile)
            {
                HttpPostedFile file = FileUpload1.PostedFile;
                Byte[] imgbyte = new Byte[file.ContentLength];
                file.InputStream.Read(imgbyte, 0, file.ContentLength);
                con.Open();
                cmd = new SqlCommand("insert into Products values(@id,@name,@img,@price,@stock,'"+type.Text+"')", con);
                cmd.Parameters.Add("id", SqlDbType.Int).Value = Convert.ToInt32(id.Text);
                cmd.Parameters.Add("name", SqlDbType.NVarChar).Value = Name.Text;
                cmd.Parameters.Add("img", SqlDbType.Image).Value = imgbyte;
                cmd.Parameters.Add("price", SqlDbType.NVarChar).Value = Price.Text;
                cmd.Parameters.Add("stock", SqlDbType.NVarChar).Value = Stock.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                error.Text = "Saved";

                {
                    con.Open();

                    SqlCommand cmd1 = new SqlCommand("select * from Products ", con);
                    SqlDataAdapter sqa = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();

                    sqa.Fill(dt);


                    GridView1.DataSource = dt;
                    GridView1.DataBind();


                    con.Close();
                }
            }


            //}
            //catch (Exception ex)
            //{
            //    error.Text = ex.Message;

            //}
        }
        void deletedata()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("delete from Products where id=@id", con);
                cmd.Parameters.Add("id", SqlDbType.Int).Value = Convert.ToInt32(id.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                error.Text = "Deleted";
            }
            catch (Exception ex)
            {
                error.Text = ex.Message;

            }
        }
        void refresh()

        {

            try

            {
                con.Close();
                cmd = new SqlCommand("Select max(id)+1 as id from Products   ", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        id.Text = rd[0].ToString();

                        if (id.Text == "")
                        {
                            id.Text = "1";
                        }
                    }
                }

                rd.Close();
                con.Close();





            }
            catch (Exception ex)
            {
                error.Text = (ex.Message);

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    id.Text = row.Cells[0].Text;
                    Name.Text = row.Cells[1].Text;
                    Price.Text = row.Cells[2].Text;
                    Stock.Text = row.Cells[3].Text;







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

        protected void Button3_Click(object sender, EventArgs e)
        {
            savedata();
            refresh();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            deletedata();
            savedata();
            refresh();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deletedata();
            refresh();
            Response.Redirect("Desginger.aspx");
        }
    }
}