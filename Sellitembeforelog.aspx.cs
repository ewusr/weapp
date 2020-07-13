using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Sellitembeforelog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "detail")
            {
                Response.Redirect("login.aspx");
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Products";
            DataList2.DataSourceID = "SqlDataSource1";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Products where type='"+DropDownList1.Text+"'";
                DataList2.DataSourceID = "SqlDataSource1";
            }
            catch (Exception ex)
            {
                Label5.Text = ex.Message.ToString();
               
            }
        }
    }
}