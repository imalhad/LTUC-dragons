<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="2">
                    <asp:Label ID="Label1" runat="server" style="font-size: xx-large" 
                        Text="Dragon Zoo Admin Panel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="IdTb" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" />
&nbsp;
                    <asp:Label ID="Label8" runat="server" style="color: #FF0000" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Dragon Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="NameTb" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Dragon  Color"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ColorTb" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Dragon Food"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="FoodTb" runat="server" Height="61px" TextMode="MultiLine" 
                        Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Dragon Location"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="locationDDL" runat="server" DataSourceID="locationDS" 
                        DataTextField="location" DataValueField="location" Width="320px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="locationDS" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LTUCConnectionString %>" 
                        SelectCommand="SELECT [location] FROM [Locations]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" 
                        Text="A new Dragon has been added into the database" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Add / Update" />
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="id" DataSourceID="DragonDS" ForeColor="#333333" 
                        GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                            <asp:BoundField DataField="Food" HeaderText="Food" SortExpression="Food" />
                            <asp:BoundField DataField="Location" HeaderText="Location" 
                                SortExpression="Location" />
                        </Columns>
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
                    <asp:SqlDataSource ID="DragonDS" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LTUCConnectionString %>" 
                        SelectCommand="SELECT * FROM [Dragons]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
