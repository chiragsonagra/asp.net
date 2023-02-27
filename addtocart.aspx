<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="ice_cream.addtocart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
      <head>
        <style>
        
        body
        {
                  background-image:url(../images/addtocartbg.jpg); 
                  background-repeat:no-repeat;
                  background-size:cover;
        }
        
        </style>
  

        
      </head>

    <body>
    
       

           <h2 style="text-decoration:underline overline blink; color:#5f98f3; text-align:center"> you have following product in your cart   </h2>
                 <br />

                 
                <center>
                
                 <form id="Form1" runat="server">
                  
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                      ShowHeaderWhenEmpty="True" EmptyDataText="no items in cart" ShowFooter="True" 
                      Width="1500px"  
                      onselectedindexchanged="GridView1_SelectedIndexChanged" 
                      onrowdeleting="GridView1_RowDeleting" Font-Bold="True" 
                      AllowPaging="True"   >
                      <Columns>
                          <asp:BoundField DataField="srno" HeaderText="Srno" />
                          <asp:BoundField DataField="id" HeaderText="Id" />
                          <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                              <ControlStyle Height="250px" Width="300px" />
                          </asp:ImageField>
                          <asp:BoundField DataField="name" HeaderText="Name" />
                          <asp:BoundField DataField="price" HeaderText="Price" />
                          <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                          <asp:BoundField DataField="totalprice" HeaderText="Totalprice" />
                          <asp:CommandField HeaderText="Modify" ShowSelectButton="True" 
                              SelectText="modify" >
                            
                          <ControlStyle ForeColor="black" />
                          </asp:CommandField>
                        
                          
                          <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" >
                        
                          
                          <ControlStyle ForeColor="black" />
                          </asp:CommandField>
                        
                          
                      </Columns>

               </asp:GridView>
                  <asp:Button ID="Button1" runat="server" Text="checkout" Height="55px" 
                      onclick="Button1_Click" Width="146px" BackColor="Black" Font-Bold="True" 
                      Font-Italic="True" Font-Size="Larger" ForeColor="White" 
                      BorderColor="White" BorderWidth="5px"  />
               </form>
               
                </center>
           
         
              
         

           


         

    </body>



</html>


</asp:Content>
