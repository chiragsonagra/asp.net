<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="changed_order_s.aspx.cs" Inherits="ice_cream.changed_order_s" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">
    <asp:TextBox ID="order" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Button"  OnClientClick="gettext()" 
        onclick="Button1_Click" />
    <asp:HiddenField ID="hfTextboxValue" runat="server"  />
</form>
</asp:Content>
