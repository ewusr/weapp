<%@ Page Title=""  MaintainScrollPositionOnPostBack="true" Language="C#" MasterPageFile="~/Site1.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication3.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   
  <br /><br /><br /><br /><br /><br /><br /><br />
    <section class="site-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7">
            <div class="form-wrap">
              <h2 class="mb-5">Cart</h2>
              <form action="#" method="post">
                  <asp:Label ID="itemdid" runat="server" Text=""></asp:Label>
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  <asp:Label ID="error" runat="server" Text=""></asp:Label>
                     <div class="row">
                    <div class="col-md-6 form-group">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="177px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound"  Width="329px" >
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
                        <asp:Label ID="Label2" runat="server" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Solid" Font-Size="Large"></asp:Label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                    
                        <asp:Button ID="Button1" runat="server" Text="Delete Item" OnClick="Button1_Click" />
                    
                    </div>
                       </div>
                   <div class="row">
                    <div class="col-md-12 form-group">
                    
                        <asp:Button ID="Button2" runat="server" Text="Proceed" OnClick="Button2_Click" />
                    
                    </div>
                       </div>
                 
                  <br />
                   <div class="row">
                    <div class="col-md-12 form-group">
                    
                        <asp:Panel ID="Panel1" runat="server" Visible="False">

                             <div class="row">
                             <div class="col-md-12 form-group">
                             <label for="name">Name</label>
                             <asp:TextBox class="form-control py-2" type="text" ID="Name" runat="server"></asp:TextBox>
                             </div>
                              </div>
                               <div class="row">
                             <div class="col-md-12 form-group">
                             <label for="name">Mobile Number</label>
                             <asp:TextBox class="form-control py-2" type="text" ID="Number" runat="server"></asp:TextBox>
                             </div>
                              </div>
                               <div class="row">
                             <div class="col-md-12 form-group">
                             <label for="name">Home Address</label>
                             <asp:TextBox class="form-control py-2" type="text" ID="Address" runat="server"></asp:TextBox>
                             </div>
                              </div>
                              <div class="row">
                             <div class="col-md-12 form-group">
                             <label for="name">Date</label>
                             <asp:TextBox class="form-control py-2" type="text"  ID="Date" runat="server"></asp:TextBox>
                             </div>
                              </div>
                             <div class="row">
                             <div class="col-md-12 form-group">
                                 <asp:Button ID="Confirm" runat="server" Text="Confirm Order" OnClick="Confirm_Click" />
                             
                             </div>
                              </div>


                        </asp:Panel>
                    
                    </div>
                       </div>
                
                  
                </form>
              </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>