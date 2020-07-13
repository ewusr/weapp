<%@ Page Title=""  MaintainScrollPositionOnPostBack="true" Language="C#" MasterPageFile="~/Designermaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Desginger.aspx.cs" Inherits="WebApplication3.Desginger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <br /><br /><br /><br /><br /><br /><br /><br />
    <section class="site-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-9">
            <div class="form-wrap">
              <h2 class="mb-5">Add Item Info</h2>
              <form action="#" method="post">
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Id</label>
                        <asp:TextBox class="form-control py-2" type="text" ID="id" ReadOnly="true" runat="server"></asp:TextBox>
                    
                    </div>
                       </div>

                   <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Name</label>
                        <asp:TextBox class="form-control py-2" type="text" ID="Name" ReadOnly="false" runat="server"></asp:TextBox>
                    
                    </div>
                       </div>
                   
                  

                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Price</label>
                        <asp:TextBox class="form-control py-2" type="" ID="Price" runat="server" TextMode="Number"></asp:TextBox>
                    
                    </div>
                       </div>
                
               
                   <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Stock</label>
                        <asp:TextBox class="form-control py-2" type="text" ID="Stock"  runat="server" TextMode="Number"></asp:TextBox>
                    
                    </div>
                       </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Stock</label>
                        <asp:TextBox class="form-control py-2" type="text" ID="type"  runat="server" TextMode="SingleLine"></asp:TextBox>
                    
                    </div>
                       </div>
                   <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    
                    </div>
                       </div>
                   <div class="row">
                    <div class="col-md-6 form-group">
                      <asp:Button ID="Button3" runat="server" class="btn btn-primary px-5 py-2" Text="Add" OnClick="Button3_Click" style="left: 0px; top: -1px"  />
                    </div>
                  </div>
                    <div class="row">
                    <div class="col-md-6 form-group">
                      <asp:Button ID="Button1" runat="server" class="btn btn-primary px-5 py-2" Text="Update" OnClick="Button1_Click"  />
                    </div>
                  </div>
                    <div class="row">
                    <div class="col-md-6 form-group">
                      <asp:Button ID="Button2" runat="server" class="btn btn-primary px-5 py-2" Text="Delete" OnClick="Button2_Click" style="left: -1px; top: -1px"  />
                    </div>
                  </div>
                  <asp:Label ID="error" runat="server" Text=""></asp:Label>
                    <div class="row">
                    <div class="col-md-12 form-group">
                    </div>
                  </div>
                      <div class="row">
                    <div class="col-md-6 form-group">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="177px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound"  Width="329px">
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
                  </div>
                  
                </form>
              </div>
          </div>
        </div>
      </div>
    </section>


</asp:Content>
