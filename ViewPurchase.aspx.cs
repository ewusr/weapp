using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Net.NetworkInformation;

namespace Dryfruit
{
    public partial class ViewPurchase : System.Web.UI.Page
    {

       // SqlDataReader rdr = null;
        
            


        SqlConnection con = null;

        SqlCommand cmd;
        ConnectionString cs = new ConnectionString();

        bool check1;
        void checkinternet()
        {
            check1 = NetworkInterface.GetIsNetworkAvailable();

        }



        void mail()
        {
            con = new SqlConnection(cs.DBConn);
            cmd = new SqlCommand("Select * from Login  ", con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {

                    if (rd[6].ToString() == Label7.Text)
                    {
                        Label10.Text = DateTime.Now.ToLongDateString();
                        Label11.Text = DateTime.Now.ToLongTimeString();
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                        client.EnableSsl = true;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                        client.UseDefaultCredentials = false;
                       client.Credentials = new NetworkCredential("maqsoodmr43@gmail.com", "Pakistan@123");
                        MailMessage messa = new MailMessage();

                        messa.To.Add(rd[1].ToString());
                       messa.From = new MailAddress("maqsoodmr43@gmail.com", "MR International", System.Text.Encoding.UTF8);
                        messa.Subject = "New Container Added";
                        for (int i = 0; i < GridView1.Rows.Count; i++)
                        {
                            messa.Body = Label10.Text + "\n" + Label11.Text + "\n\n" + "Hi " + rd[6].ToString() + "\n\n\n" + " We Want to Informe you That against Contract Number " + Label3.Text + " New Container Has been Added Container number is" + GridView1.Rows[i].Cells[4].Text + " Bill number " + GridView1.Rows[i].Cells[5].Text + " Shipping line " + GridView1.Rows[i].Cells[6].Text + " Departure port " + GridView1.Rows[i].Cells[7].Text + "Departure Time" + GridView1.Rows[i].Cells[8].Text + " Arraival port " + GridView1.Rows[i].Cells[9].Text + " Arraival Time " + GridView1.Rows[i].Cells[10].Text + "Current Status is " + GridView1.Rows[i].Cells[3].Text + "\n\n\n" + "This Email is Sent By Rafiq Traders ";
                            client.Send(messa);
                        }
                      
                    }
                }
            }



        }

    





        void refresh()
        {
            con = new SqlConnection(cs.DBConn);
            con.Open();
            cmd = new SqlCommand("select * from Purchase  where status!=@s", con);
            cmd.Parameters.Add("@s", SqlDbType.NVarChar).Value = "Arrivied";


            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            GridView2.AutoGenerateColumns = false;
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }


        int count = 0;
        void insert1()
        {
            //try
            //{
                for (int ii = 0; ii < GridView1.Rows.Count; ii++)

                    
          {

                //con = new SqlConnection(cs.DBConn);
                //con.Open();
                // cmd = new SqlCommand("select * from Container  where and Contract_num=@Contract_num and C_number=@C_number", con);

                // cmd.Parameters.Add("Contract_num", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[2].Text;
                //cmd.Parameters.Add("C_number", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[4].Text;


                //DataTable dt = new DataTable();
                //SqlDataAdapter sda = new SqlDataAdapter("select * from Container  where and Contract_num='"+ GridView1.Rows[ii].Cells[2].Text + "' and C_number='" + GridView1.Rows[ii].Cells[2].Text + "'", con);
                //sda.Fill(dt);
                //count = dt.Rows.Count;

                //if (count > 0)
                //{
                //    Label1.Text = "Container Already Exists";
                //}
                //Button9.Text = "done";
                //else
                //{
                con = new SqlConnection(cs.DBConn);
                con.Open();

                SqlCommand cmd1 = new SqlCommand("insert into Container values (@Date,@Contract_num,@Status,@C_number,@BL_number,@Shipping_line,@Depature_port,@Depature_Time,@Arraivail_port,@Arraivail_time,@Ware_house,'" + companyname + "')", con);

                cmd1.Parameters.Add("@Date", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[1].Text;

                cmd1.Parameters.Add("@Contract_num", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[2].Text;



                cmd1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[4].Text;

                cmd1.Parameters.Add("@C_number", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[4].Text;

                cmd1.Parameters.Add("@BL_number", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[5].Text;
                cmd1.Parameters.Add("@Shipping_line", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[6].Text;
                cmd1.Parameters.Add("@Depature_port", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[7].Text;
                cmd1.Parameters.Add("@Depature_Time", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[8].Text;
                cmd1.Parameters.Add("@Arraivail_port", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[9].Text;
                cmd1.Parameters.Add("@Arraivail_time", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[10].Text;
                cmd1.Parameters.Add("@Ware_house", SqlDbType.NVarChar).Value = GridView1.Rows[ii].Cells[11].Text;

                cmd1.ExecuteNonQuery();
                con.Close();

                //}



            }
            Label1.Text = "Containers Added";
        }


        string companyname;


        DataTable dd = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            //try
            //{
                //string t = Session["type"].ToString();
                //companyname = Session["company"].ToString();
                //if (t == "Admin")
                //{

                //    this.Master.FindControl("A11").Visible = false;
                //    this.Master.FindControl("A12").Visible = false;
                //}
                //Label12.Text = Session["Value6"].ToString();
                //if (Label12.Text == "1")
                //{
                    if (!IsPostBack)
                    {
                    status1();
                    warehosue();
                    refresh();
                      }
                //Label3.Text = Session["Value1"].ToString();
                //Label5.Text = Session["Value2"].ToString();
                //Label7.Text = Session["Value3"].ToString();
                //Label9.Text = Session["Value4"].ToString();
                //Label11.Text = Session["Value5"].ToString();
                if (ViewState["Record"] == null)
                {
                    dd.Columns.Add("Container No");
                    dd.Columns.Add("Date");
                    dd.Columns.Add("Contract_num");
                    dd.Columns.Add("Status");
                    dd.Columns.Add("C_number");
                    dd.Columns.Add("BL_number");
                    dd.Columns.Add("Shipping_line");
                    dd.Columns.Add("Depature_port");
                    dd.Columns.Add("Depature_Time");
                    dd.Columns.Add("Arraivail_port");
                    dd.Columns.Add("Arraivail_time");
                    dd.Columns.Add("Ware_house");
                    ViewState["Record"] = dd;
                }

                // }
                //else if (Label12.Text == "Label")
                //{
                //status1();
                //if (ViewState["Record"] == null)
                //{
                //    dd.Columns.Add("Container No");
                //    dd.Columns.Add("Date");
                //    dd.Columns.Add("Contract_num");
                //    dd.Columns.Add("Status");
                //    dd.Columns.Add("C_number");
                //    dd.Columns.Add("BL_number");
                //    dd.Columns.Add("Shipping_line");
                //    dd.Columns.Add("Depature_port");
                //    dd.Columns.Add("Depature_Time");
                //    dd.Columns.Add("Arraivail_port");
                //    dd.Columns.Add("Arraivail_time");
                //    dd.Columns.Add("Ware_house");
                //    ViewState["Record"] = dd;
                //}
                //}


                //TextBox15.Text = "0";

            //}
            //catch (Exception)
            //{

              
            //}
        }


        void status1()
        {
            try
            {
                status.Items.Clear();
                status.Items.Add("");
                con = new SqlConnection(cs.DBConn);
                con.Open();
                cmd = new SqlCommand("select * from Status", con);

                SqlDataReader rrd = cmd.ExecuteReader();
                DataTable dt = new DataTable();

                while (rrd.Read())
                {
                    status.Items.Add(rrd[0].ToString());
                }

                con.Close();

            }
            catch (Exception)
            {

            }
        }
        void warehosue()
        {
            try
            {
                WareHouse.Items.Clear();
                WareHouse.Items.Add("");
                con = new SqlConnection(cs.DBConn);
                con.Open();
                cmd = new SqlCommand("select * from Warehouse", con);

                SqlDataReader rrd = cmd.ExecuteReader();
                DataTable dt = new DataTable();

                while (rrd.Read())
                {
                    WareHouse.Items.Add(rrd[0].ToString());
                }

                con.Close();

            }
            catch (Exception)
            {

            }
        }





        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TextBox15.Text = TextBox15.Text;
            //contract.Visible = true;
           
        }
        string name = "#";
        int a = 1;
        protected void Button3_Click(object sender, EventArgs e)
        {
            
            name = name + a.ToString();
            Div1.Visible = true;
            dd = (DataTable)ViewState["Record"];
            dd.Rows.Add(name,Label5.Text, Label3.Text, status.Text, ContractNo1.Text, blnumber.Text, shipingline.Text, DeparturePort.Text, Departuretime.Text, Arrivalport.Text, arrivaltime.Text, WareHouse.Text);
            GridView1.DataSource= dd;
            GridView1.DataBind ();
            a++;
        }



        string contractno;
       
        protected void Button9_Click(object sender, EventArgs e)
        {
            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
            //    GridView1.Rows[i].Cells[0].Text = i.ToString();
            //}

            insert1();
            anb.Visible = true;
            contract.Visible = false;
            Div1.Visible = false;
           
            try
            {
                checkinternet();
                if (check1 == true)
                {
                    mail();
                }


            }
            catch (Exception)
            {


            }

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow ro = GridView2.SelectedRow;
            Label4.Text = ro.Cells[1].Text;
            Label3.Text = ro.Cells[2].Text;
            Label5.Text = ro.Cells[4].Text;
            Label7.Text= ro.Cells[5].Text;
            Label9.Text = ro.Cells[6].Text;
            Label11.Text = ro.Cells[1].Text;
            contractno= ro.Cells[2].Text;
            anb.Visible = false;
            contract.Visible = true;
          



        }

        protected void Label11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox16_TextChanged(object sender, EventArgs e)
        {
        }

        protected void status_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void WareHouse_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            name = name + a.ToString();
            Div1.Visible = true;
            dd = (DataTable)ViewState["Record"];
            dd.Rows.Add(name, Label5.Text, Label3.Text, status.Text, ContractNo1.Text, blnumber.Text, shipingline.Text, DeparturePort.Text, Departuretime.Text, Arrivalport.Text, arrivaltime.Text, WareHouse.Text);
            GridView1.DataSource = dd;
            GridView1.DataBind();
            a++;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            
        }

        protected void sds_Click(object sender, EventArgs e)
        {
            insert1();
            //anb.Visible = true;
            //contract.Visible = false;
            //Div1.Visible = false;
          //  Label1.Text = "Containers Added";
           
        }
    }
}