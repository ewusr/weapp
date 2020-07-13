<%@ Page Title="" Language="C#"  EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="ViewPurchase.aspx.cs" Inherits="Dryfruit.ViewPurchase"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br /><br /><br /><br /><br /><br />
  
      <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
      <asp:UpdatePanel  ID="panal2" runat="server">
          <ContentTemplate>
      <div class="" id="anb" runat="server" visible="true">
       <div class="wrapper--w900">
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title"> Container Add</h2>
                           </div> <br /><br />
                    <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                     <div style="width: 1000px; height: 550px; overflow: scroll">
                    <asp:GridView ID="GridView2" runat="server" class="input--style-5" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="invoice" HeaderText="Invoice no" />
                            <asp:BoundField DataField="contrctno" HeaderText="Contrct no" />
                            <asp:BoundField DataField="status" HeaderText="Status" />
                            <asp:BoundField DataField="date" HeaderText="Date" />
                            <asp:BoundField DataField="supplier" HeaderText="Supplier" />
                            <asp:BoundField DataField="totalamount" HeaderText="Total_amount" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                         </div>
                    <br /><br /><br /><br />
                      <div class="form-row">
                            <div class="name">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</div>
                            <div class="value">
                                <div class="input-group">
                                    <br />
                                </div>
                            </div>
                          <br />
                          <br />
                          <br />
                        </div>
                                        
                                                                      
                                    
                         </div>
                    </div>                 
                </div>
        <div class="" id="contract" runat="server" visible="false" >
            <div class="wrapper--w900">
                <div class="card card-5">
                    <div class="card-heading">

                        <h2 class="title">Container 1 Detail</h2>
                           </div> <br /><br /><br />
                       <%-- <div class="form-row">--%>
                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Contract No:   " Font-Bold="True" Font-Size="X-Large"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></asp:Label>
                    <br />
                    <br />&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Date:   " Font-Size="Small"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label10" runat="server" Text="Invoice No:   " Font-Size="Small"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></asp:Label>
                    <br />
                    <br />&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Name:   " Font-Size="Small"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Amount:   " Font-Size="Small"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                     <div class="form-row">
                            <%--<div class="name">&nbsp&nbsp&nbsp&nbsp Main Status</div>--%>
                            <div class="value">
                                <div class="input-group">
                                   <%-- <<asp:DropDownList ID="DropDownList5" runat="server" Width="1000px">
                                           
                                        </asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                            
                      
                        <div class="form-row">
                            
                            <div class="value">
                                <div class="name">&nbsp&nbsp&nbsp&nbsp Status</div>
                                <div class="input-group">
                                      <<asp:DropDownList ID="status" runat="server" Width="200px" OnSelectedIndexChanged="status_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            
                            <div class="value">
                                <div class="name" style="width: 230px; height: 21px">&nbsp&nbsp&nbsp&nbsp Container_No</div>
                                <div class="input-group" style="left: 133px; top: -19px">
                                    <asp:TextBox class="input--style-5"  ID="ContractNo1"   runat="server"></asp:TextBox>
                                    <%--<asp:TextBox runat="server" class="input--style-5" TextMode="Number" ID="ContractNo"  />--%>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                           
                            <div class="value">
                                 <div class="name">&nbsp&nbsp&nbsp&nbsp BL_Number</div>
                                <div class="input-group">
                                    <asp:TextBox runat="server" class="input--style-5" name="BL Number" ID="blnumber" />
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            
                            <div class="value">
                                <div class="name">&nbsp&nbsp&nbsp&nbsp Shiping_Line </div>
                                <div class="input-group">
                                    <asp:TextBox runat="server" class="input--style-5" type="text" TextMode="SingleLine" ID="shipingline" name="ShipingLine" />
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            
                            <div class="value">
                                <div class="name">&nbsp Departure_Port</div>
                                <div class="input-group">
                                    <asp:TextBox runat="server" class="input--style-5" type="text" TextMode="SingleLine" ID="DeparturePort" name="DeparturePort" />
                                </div>
                            </div>
                        </div>
                    <div class="form-row">
                            
                            <div class="value">
                                <div class="name"> Departure_Time</div>
                                <div class="input-group">
                                   <asp:TextBox runat="server" class="input--style-5" TextMode="Date" name="Departuretime" ID="Departuretime"  />
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            
                            <div class="value">
                                <div class="name">&nbsp&nbsp&nbsp&nbsp Arrival_Port</div>
                                <div class="input-group">
                                    <asp:TextBox runat="server" class="input--style-5" type="text" TextMode="SingleLine" ID="Arrivalport" name="ArrivalPort" />
                                </div>
                            </div>
                        </div>
                    <div class="form-row">
                           
                            <div class="value">
                                 <div class="name">&nbsp&nbsp&nbsp&nbsp Arrival_time</div>
                                <div class="input-group">
                                    <asp:TextBox runat="server" class="input--style-5" TextMode="Date" name="arrivaltime" ID="arrivaltime"  />
                                </div>
                            </div>
                        </div>
                        
            
                      <div class="form-row">
                            
                            <div class="value">
                                <div class="name">&nbsp&nbsp&nbsp&nbsp Warehouse</div>
                                <div class="input-group">
                                     <asp:DropDownList ID="WareHouse" runat="server" Width="159px" OnSelectedIndexChanged="WareHouse_SelectedIndexChanged" AutoPostBack="True">
                                           
                                        </asp:DropDownList>
                                    <%--<asp:TextBox runat="server" class="input--style-5" TextMode="Number" ID="ContractNo"  />--%>
                                </div>
                            </div>
                        </div>
                        <div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            
                            <div class="name">
                                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button class="btn btn--radius-2 btn--green" ID="Button3" type="submit" Text="+AddMore"  runat="server" OnClick="Button3_Click" Width="189px" Height="50px"   />
                                                                
                                 
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                        </div>

                    </div>
                </div>
            </div>
      <div class="" id="Div1" runat="server" visible="false">
            <div class="wrapper--w900" style="height: 376px; width: 1088px">
                <div class="card card-5">
                    <div class="card-heading">

                        <h2 class="title">Container info</h2>
                           </div> <br /><br /><br />
                       <div class="form-row">
                            
                          
                            
                                    <div class="value">
                                <div class="input-group">
                                    
                                        <asp:GridView ID="GridView1"  runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                            <RowStyle BackColor="White" ForeColor="#003399" />
                                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                            <SortedDescendingHeaderStyle BackColor="#002876" />
                                        </asp:GridView>    
   
                        <%--</div>--%>
                </div>
                </div>
            </div>
     </div>
 
     

        
                       
         
           <asp:Button class="btn btn--radius-2 btn--green" ID="Button9" type="submit" Text="Save" runat="server" OnClick="Button9_Click" Width="220px" Height="50px"   />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <asp:TextBox ID="TextBox15" runat="server" Visible="false"></asp:TextBox>
                   </div>
            </div>
     </div>
        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>
          </ContentTemplate>

      </asp:UpdatePanel>
  
</asp:Content>
