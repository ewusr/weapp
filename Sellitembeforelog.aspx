<%@ Page Title=""  MaintainScrollPositionOnPostBack="true" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sellitembeforelog.aspx.cs" Inherits="WebApplication3.Sellitembeforelog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br /><br /><br />
    <asp:Button ID="Button2" runat="server" Text="All" OnClick="Button2_Click" /> <asp:Label ID="Label6" runat="server" Text="Type"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><asp:Label ID="Label5" runat="server" Text=""></asp:Label>
<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" style="margin-bottom: 0px; margin-top: 0px;" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList2_ItemCommand" BackColor="White" BorderColor="Black" BorderStyle="Groove" BorderWidth="2px" CellPadding="4" CellSpacing="20" Font-Size="Large" ForeColor="#333333" GridLines="Horizontal" CssClass="table">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <table  class="auto-style1" style="height: 300px" >
                    <tr >
                        <td style="text-align: center" class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Itemname") %>' BackColor="White" Font-Size="Large" ForeColor="Gray"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center" class="auto-style2">
                            <asp:Image ID="Image1" runat="server" height="194px" ImageUrl='<%# "data:image/png;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' width="289px" />
                        </td>
                    </tr>
                    <tr >
                        <td  style="text-align: center">
                            <asp:Label ID="Label2" runat="server" BackColor="White" ForeColor="#333333" Font-Size="Large" Text='<%# Eval("Price") %>' Font-Bold="True"></asp:Label>
                            &nbsp; Rs/-</td>
                    </tr>
                    <tr >
                        <td style="text-align: center; height: 26px;">
                            <asp:Label ID="Label4" runat="server" BackColor="White" ForeColor="#333333" Text='<%# Eval("Stock") %>' Font-Bold="True"></asp:Label>
                            &nbsp;Items</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" CommandName="detail" CommandArgument='<%# Eval("id") %>' Height="25px" Text="Add To Cart" Width="137px" BackColor="#33CCFF" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:desibrandstariq %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

     <div class="row">
                    <div class="col-md-12 form-group">
                        <asp:GridView ID="GridView1" runat="server" BorderColor="#003399" CellPadding="4" Font-Size="Large" ForeColor="#333333" GridLines="None" Height="226px" Width="599px">
                           <columns>
          <asp:boundfield datafield="Name" headertext="Product Name"/>
          <asp:boundfield datafield="Price" headertext="Price"/>
        
        </columns>
                            
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    
                    </div>
                       </div>
</asp:Content>
