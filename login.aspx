<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ice_cream.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
       <head>
  <style>
      
    body
     {
     
         background-image:url(../images/lobg.jpg); 
       background-repeat:no-repeat;
       background-size:100%; 
       
     }
     table
     {
        border-collapse:seprate;
        border-spacing:5px;
        padding:100px 40px 170px 30px;
        margin:100px 0px 165px 540px;
      
        background-color:#ffffff7f;
        background-size:10% ;
          border:1px solid black  ;
        box-shadow:1px 1px 5px 5px;
        border-radius:20px;
       
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
       
           <form runat="server" >
      <table>

<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<image  src="../images/login icon.png" height="100px" width="100px" margin-bottom="200%" ></image>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>
<tr>
<td>username:<asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
  
    </td>
</tr>
<tr>
<td>password:<asp:TextBox ID="textbox2" runat="server"></asp:TextBox>
    <br />
    <br />
    </td>
</tr>    


<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button1" runat="server" Text="login"  
        BorderColor="#CAA8AD" BorderStyle="Inset" Font-Bold="True" 
        onclick="Button1_Click" />
        
   &nbsp;&nbsp; 
    <asp:Button ID="Button2" runat="server" Text="signup"  
        BorderColor="#CAA8AD" BorderStyle="Inset" Font-Bold="True" onclick="Button2_Click" 
         />
    </td>
</tr>

     </table>  
       
       </form>
       
       </body>
</html>
</asp:Content>
