<%@ Page Title=""  MaintainScrollPositionOnPostBack="true" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="WebApplication3.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
  <br /><br /><br /><br /><br /><br /><br /><br />
    <section class="site-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-11">
            <div class="form-wrap">
              <h2 class="mb-5">Order List</h2>
              <form action="#" method="post">
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  <asp:Label ID="error" runat="server" Text=""></asp:Label>
                     <div class="row">
                    <div class="col-md-6 form-group">
                        <div class="text-sm-center">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="272px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound"  Width="818px" CellSpacing="3" >
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        </div>
                        <asp:Label ID="Label2" runat="server" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Solid" Font-Size="Large"></asp:Label>
                    </div>
                  </div>
                
                
                
                  
                </form>
              </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>