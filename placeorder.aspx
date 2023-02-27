<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="ice_cream.placeorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 190px;
        }
       
        .style2
        {
            width: 168px;
        }
        .style3
        {
            width: 949px;
        }
        .style4
        {
            width: 238px;
        }
        .style5
        {
            width: 238px;
            height: 170px;
        }
        .style6
        {
            height: 170px;
        }
        .style7
        {
            width: 168px;
            height: 93px;
        }
        .style8
        {
            width: 949px;
            height: 93px;
        }
        .btn
        {
            margin-bottom:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
   <center> <table class="style1">
        <tr>
            <td class="style7">
                Order Id</td>
            <td class="style8">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Order Date</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="True" 
        Width="1500px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
        BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="srno" HeaderText="Sr No" />
            <asp:BoundField DataField="id" HeaderText="Product Id" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
              <ControlStyle Height="250px" Width="300px" />
            </asp:ImageField>
            <asp:BoundField DataField="name" HeaderText="Product Name" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Totalprice" />
            <asp:BoundField DataField="price" HeaderText="Price" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
   <center> <table class="style1">
        <tr>
            <td class="style5">
                Type your address:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="180px" TextMode="MultiLine" 
                    Width="761px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Mobileno:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="72px" Width="276px" 
                    MaxLength="10"></asp:TextBox>
            </td>
        </tr>
    </table></center>
    <center><asp:Button ID="Button1" runat="server" Text="placed order" Height="47px" 
        Width="130px" onclick="Button1_Click" BorderColor="Black" BorderWidth="3px" 
            Font-Size="Medium" class="btn" /></center>

    </form>
</asp:Content>
