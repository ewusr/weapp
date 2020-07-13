using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Data;
using System.Configuration;
namespace WebApplication3
{
    public partial class Sellpage : System.Web.UI.Page
    {
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=desibrands;Integrated Security=True");
    SqlCommand cmd; string productname;
        string pricep,idp;
        string checkname;
    
    protected void Page_Load(object sender, EventArgs e)
        {
           
            checklogin();
            //try
            //{
                SqlCommand cmd = new SqlCommand("SELECT Name fROM Registration where email=@email", con);
                cmd.Parameters.Add("email", SqlDbType.NVarChar).Value = Email.Text;


                con.Open();


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    Name.Text = (reader.GetString(0));
           


                }
                reader.Close();
                con.Close();
            //}
            //catch (Exception ex)
            //{
            //    Label3.Text = ex.Message;


            //}
        }
        void checklogin()
        {
            //try
            //{
            SqlCommand cmd = new SqlCommand("SELECT Name fROM checklogin", con);



            con.Open();


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    Email.Text= (reader.GetString(0));
        


                }
                reader.Close();
                con.Close();
            //}
            //catch (Exception ex)
            //{
            //    Label3.Text = ex.Message;


            //}
        }int ind=0;

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Products where type='" + DropDownList1.Text + "'";
                DataList2.DataSourceID = "SqlDataSource1";
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message.ToString();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlDataSource1.SelectCommand = "SELECT * FROM Products";
            DataList2.DataSourceID = "SqlDataSource1";
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Email.Text.Trim() != "" )
            {
                if (e.CommandName == "detail")
                {
                    int id = Convert.ToInt32(e.CommandArgument);

                    //try
                    SqlCommand cmd = new SqlCommand("Select * from Products where id='" + id + "' and Stock>0", con);
                    con.Open();
                
            



                    SqlDataAdapter sda = new SqlDataAdapter(cmd);

                    DataSet ds = new DataSet();

                    sda.Fill(ds);
                    con.Close();
                    int count = ds.Tables[0].Rows.Count;

                    if (count >= 1)
                    {
                        {
                            
                            SqlCommand cmd1 = new SqlCommand("SELECT * fROM Products where id='" + id + "'", con);



                            con.Open();

                            SqlCommand cmd2;
                            SqlDataReader reader = cmd1.ExecuteReader();
                            while (reader.Read())
                            {
                                productname= reader[1].ToString();

                               pricep = reader[3].ToString();
                                

                            }
                            reader.Close();
                          
                            con.Close();
                            cmd2 = new SqlCommand("insert into cart (name,price,itemid,email) values(@name,@price,@id,@email)", con);
                            con.Open();
                            cmd2.Parameters.Add("name", SqlDbType.NVarChar).Value = productname;

                            cmd2.Parameters.Add("price", SqlDbType.NVarChar).Value = pricep;
                            cmd2.Parameters.Add("id", SqlDbType.NVarChar).Value = id;
                            cmd2.Parameters.Add("email", SqlDbType.NVarChar).Value = Email.Text; 
                            cmd2.ExecuteNonQuery();
                            con.Close();
                            Label3.Text = "added in cart";

                           
                            {

                                con.Open();
                                cmd = new SqlCommand("update products set stock=stock-1 where id=@id", con);
                                cmd.Parameters.Add("id", SqlDbType.Int).Value = Convert.ToInt32(id);

                                cmd.ExecuteNonQuery();
                                con.Close();
                               Response.Redirect("Sellpage.aspx");
                            }
                            // ind++;
                        }


                    }

                    else
                    {
                        Label3.ForeColor = System.Drawing.Color.Red;
                        Label3.Text = "Item Not Available";
                    }

                
                    //catch (Exception ex)
                    //{
                    //    Label3.Text = ex.Message;


                    //}
                }
            }
            else
            {
                
            }
        }
    }
}
