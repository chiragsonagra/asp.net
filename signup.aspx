<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" codeBehind="signup.aspx.cs" Inherits="ice_cream.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<html>
<head>

<style>
 body
     {
     
         background-image:url('../images/ice photo/signupbg.jpg'); 
       background-repeat:no-repeat;
       background-size:700px; 
       background-position:left;
     }
     table
     {
        border-collapse:seprate;
        border-spacing:5px;
        padding:70px 30px 70px 30px;
        margin:100px 0px 100px 1100px;
      
        background-color:#ffffff7f;
        background-size:10% ;
       
        border-radius:20px;
        border:1px solid black  ;
        box-shadow:1px 1px 10px 5px;
     }
     
     .txtbox
     {
         
         border-radius:50px;
         }
      form
      {
          align:center;
      }
       

</style>
</head>
<body>
<form id="Form1" runat="server">

<table>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<image  src="../images/login icon.png" height="100px" width="100px" margin-bottom="200%" ></image>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>
<tr>
<td>username:<asp:TextBox ID="username" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="username" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>password:<asp:TextBox ID="password" runat="server"></asp:TextBox></td>
</tr>    
<tr>
<td>con-pass :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="password" ControlToValidate="TextBox3" ErrorMessage="*" 
        Font-Bold="True" ForeColor="#FF3300"></asp:CompareValidator>
    </td>
</tr>
<tr>
<td>city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" 
        BorderColor="#CAA8AD" BorderStyle="Inset" Font-Bold="True" /></td>
    
</tr>

     </table>  
</form>


</body>

</html>

</asp:Content>
