<%@ Page Title=""  MaintainScrollPositionOnPostBack="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication3.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br /><br /><br /><br /><br /><br /><br /><br />
    <section class="site-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7">
            <div class="form-wrap">
              <h2 class="mb-5">Login</h2>
              <form action="#" method="post">
                  

                
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Email Address</label>
                        <asp:TextBox class="form-control py-2"  ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                    
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Password</label>
                       <asp:TextBox class="form-control py-2" type="text" ID="Password" TextMode="Password"  runat="server"></asp:TextBox>
                    </div>
                  </div>
                 
                         <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Select Actor</label>

                        <asp:DropDownList class="form-control py-1" type="text" ID="type" runat="server"  Font-Size="Medium">
                            <asp:ListItem>Buyer</asp:ListItem>                       
                            <asp:ListItem>Admin</asp:ListItem>                          
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                       
                       
                    </div>
                 
                 </div>


                  
                  <div class="row">
                    <div class="col-md-6 form-group">
                      <asp:Button ID="Button1" runat="server" class="btn btn-primary px-5 py-2" Text="Login" OnClick="Button1_Click"/>
                    </div>
                  </div>
                  <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                </form>
              </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
