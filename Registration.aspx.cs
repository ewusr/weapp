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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1VGMLIB;Initial Catalog=desibrands;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                refresh();
            }
        }


        public void log()
        {
            try
            {
                

                SqlCommand cmd = new SqlCommand("Select * from Registration where  email=@email   ", con);
                con.Open();
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Email.Text;
               
              


                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();

                sda.Fill(ds);
                con.Close();
                int count = ds.Tables[0].Rows.Count;

                if (count == 1)
                {
                    error.Text = "Record Already Excits";
                }
                else
                {
                    savedata();
                }





            }
            catch (Exception ex)
            {

                error.Text = ex.Message;
            }







        }
        void savedata()
        {
            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(Password.Text.Trim(), "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?^[a-zA-Z0-9_@.-]).{8,}$"))
                {
                    if (Password.Text==rePassword.Text)
                    {
                        con.Open();
                        cmd = new SqlCommand("insert into Registration values(@name,@email,@password,@type)", con);

                        cmd.Parameters.Add("name", SqlDbType.NVarChar).Value = Name.Text;
                        cmd.Parameters.Add("email", SqlDbType.NVarChar).Value = Email.Text;
                        cmd.Parameters.Add("password", SqlDbType.NVarChar).Value = Password.Text;
                        cmd.Parameters.Add("type", SqlDbType.NVarChar).Value = type.Text;
                        cmd.ExecuteNonQuery();
                        con.Close();
                        error.Text = "Saved";
                    }
                    else
                    {
                        error.Text = "Password Not Matched";
                    }
                }
                else
                {
                    error.Text = "at least 8 characters in length ,uppercase character,lowercase character and number";
                }
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
            





            }
            catch (Exception ex)
            {
                error.Text = (ex.Message);

            }
        }
        protected void Regsiter_Click(object sender, EventArgs e)
        {
            log();
        }
    }
}