<%@ Page Title=""  MaintainScrollPositionOnPostBack="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication3.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <section class="site-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7">
            <div class="form-wrap">
              <h2 class="mb-5">Register new account</h2>
              <form action="#" method="post">
                  

                   <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Name</label>
                        <asp:TextBox class="form-control py-2" type="text" ID="Name" runat="server"></asp:TextBox>
                    
                    </div>
                       </div>
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
                  <div class="row mb-5">
                    <div class="col-md-12 form-group">
                      <label for="name">Re-type Password</label>
                      <asp:TextBox class="form-control py-2" type="text" ID="rePassword" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                  </div>
                       
                   <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Type</label>
                        <asp:TextBox class="form-control py-2" type="Buyer" ID="type" ReadOnly="true" runat="server" Text="Buyer"></asp:TextBox>
                    
                    </div>
                       </div>

                  
                  <div class="row">
                    <div class="col-md-6 form-group">
                       <asp:Button ID="Regsiter" runat="server" class="btn btn-primary px-5 py-2" Text="Regsiter" OnClick="Regsiter_Click"  />
                    </div>
                  </div>
                  <asp:Label ID="error" runat="server" Text="Label"></asp:Label>
                </form>
              </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
