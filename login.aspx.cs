using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication3
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=desibrands;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void log()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from Registration where  email=@email and password=@pass and type=@type", con);
                con.Open();
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Email.Text;
                cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = Password.Text;
                cmd.Parameters.Add("@type", SqlDbType.NVarChar).Value = type.Text;


                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();

                sda.Fill(ds);
                con.Close();
                int count = ds.Tables[0].Rows.Count;

                if (count == 1)
                {

                    if (type.Text=="Buyer")
                    {
                        Label5.ForeColor = System.Drawing.Color.Green;
                        Label5.Text = "Login as Buyer";
                        savelogin();
                        Response.Redirect("Sellpage.aspx");
                    }
                  else  if (type.Text == "Admin")
                    {
                        Label5.ForeColor = System.Drawing.Color.Green;
                        Label5.Text = "Login as Buyer";
                        savelogin();
                        Response.Redirect("About.aspx");

                    }
                   
                }

                else
                {
                    Label5.ForeColor = System.Drawing.Color.Red;
                    Label5.Text = "Incorrect Password";
                }





        }
            catch (Exception ex)
            {

                Label5.Text = ex.Message;
            }







}
       
        void savelogin()

        {
            try
            {
                con.Open();
                cmd = new SqlCommand("delete from checklogin", con);
                cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                cmd = new SqlCommand("insert into checklogin values('" + Email.Text + "')",con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

             Label5.Text=ex.Message;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            log();
        }
    }
}