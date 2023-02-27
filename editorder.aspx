<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editorder.aspx.cs" Inherits="ice_cream.editorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      table
      {
            height:50px;
            width:50px;   
            margin-top:0px; 
           margin-bottom:0px;
            margin-left:auto;
            margin-right:auto;
            border-collapse:collapse;
            background-color:#ffffff6a;
            
      }
      .btn
      {
         
       }
       body
       {
            background-image:url('../images/ice photo/editorderbg.jpg');
            background-repeat:no-repeat;
            background-position:right;
            background-size:1500px;
       }
       .label
       {            text-align: center;
        }
      
        .style1
        {
            width:50%;
        }
        table
        {
            
        }
        .style2
        {
            width: 144px;
        }
        .style3
        {
            width: 185px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
    <center>
        <br />
        <br />
        <br />
        <asp:Label ID="Label6"  class="label" runat="server" Text="modify items" 
        Font-Bold="True" Font-Italic="True" 
        Font-Size="30px" Font-Underline="False" ForeColor="#666666" 
            Font-Overline="False" Font-Strikeout="False" EnableTheming="True" ></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </center>
    <table class="style1"  border="5px" cellpadding="5" 
        frame="border">
        <tr>
            <td class="style2">
                
                srno</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                id</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                name</td>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                price
            </td>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                quantity</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                totalprice</td>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr> 
    </table>
    <center>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="svae" 
                    onclick="Button1_Click1" Height="48px" Width="128px" 
            style="margin-bottom: 2px" /></center>
    </form>
    
        <br />

</asp:Content>
