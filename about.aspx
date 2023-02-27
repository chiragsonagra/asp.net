<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ice_cream.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
body
{
     background-image:url(../images/aboutbg.jpg); 
                  background-repeat:no-repeat;
                  background-size:500px;
                  background-position:right;
                 
    
}

    .style1
    {
        text-align: left;
        
    }
    .hedding
    {
        margin-left:180px;
      margin-top:200px;  
     }
     .sub
     {
         margin-bottom:210px;
         margin-left:180px;
         }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>

<body>
<h1  class="hedding"style="text-align: left">About-us</h1>
<div class="sub">
<p class="style1">Our product is healthy for all people</p>
    <p class="style1">We can not compromise with the our customer health</p>
    <p class="style1">Any Querie related our product you can contact direct companey</p>
</div>

</body>
</html>
</asp:Content>
