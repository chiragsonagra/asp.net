<%@ Page Title="" Language="C#"EnableEventValidation="false" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="retailinvoce.aspx.cs" Inherits="ice_cream.retailinvoce" %>
<asp:Content ID="Content1"  ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body
        {
             background-image:url(../images/invoicebg.jpg); 
              background-repeat:no-repeat;
       background-size:100%; 
         }
        .style2
        {
            height: 102px;
        }
        .tb
        {    height: 145px;
            width: 878px;
            margin-left:300px;
            margin-bottom:50px;
            margin-top:50px;
        }
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 457px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
    <br />

      
    order id:<asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
    <asp:Panel ID="Panel1" runat="server">
     <form id="Form1" runat="server">
        <br />
  
        <table class="tb" border="1">
            <tr>
                <td style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize; text-align: center;">
                    Retail Invoice</td>
            </tr>
            <tr>
                <td class="style2" 
                    style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize">
                    order no:<asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <br />
                    order date:<asp:Label ID="Label2" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
            <td>
            
            
                <table class="style11">
                    <tr>
                        <td class="style12" style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize">
                            buyer address<br />
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td >
                        <td  style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize">
                            seller address<br /> ice-parlour,dhrangadhra highway<br /> halvad</td>
                    </tr>
                </table>
            
            
            </td>
            </tr>
            <tr>
                <td style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize">

                  <center> 
                 
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Height="223px" >
                        <Columns>
                            <asp:BoundField DataField="srno" HeaderText="srno">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="id" HeaderText="id">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="name" HeaderText="name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="totalprice">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    </center>
                    
                  
                </td>
            </tr>
            <tr>
                <td style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize">
                    grand total:<asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="visibility: visible; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; text-transform: capitalize;">
                
                    <p>
                        congratulation on the first purchase from ice-parlour we are happy to inform you 
                        that
                    </p>
                    <p>
                        by contacting us you have saved compared to the average cost on the market</p>
                    <p>
                        &nbsp;</p>
                
                    <p>
                        please enjoy our service!</p>
                
                </td>
            </tr>
        </table>
       
      
   <center>
                    <asp:Button ID="Button1" runat="server" Text="download invoice" 
                        Font-Bold="True" Height="41px" onclick="Button1_Click1" Width="207px" /> </center>
      </form>    

       </asp:Panel>
      

</asp:Content>
