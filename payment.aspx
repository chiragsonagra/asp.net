<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="ice_cream.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>



body{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
  
    font-size: 17px;
    
    font-weight: 600;
}

.container{
    
    border: 1px solid gray;
    border-radius: 4px;
    
}

p{
    font-size: 13px;
    text-align: right;
    margin-right: 15px;
}

div{
    margin: 10px;
}

.main-heading{
    text-align: center;
}

input[type="text"],
input[type="email"],
input[type="number"],
input[type="date"],
input[type="password"],
select,textarea{
    width: 100%;
    padding: 10px;
    margin: 10px 0px;
    border: 1px solid #cccccc;
    border-radius: 4px;
}

input[type="submit"]{
    width: 100%;
    background-color: rgb(13, 163, 13);
    color: honeydew;
    font-size: 18px;
    padding: 12px 20px;
    margin: 10px 0px;
    border-radius: 7px;
    border: none;
    box-shadow: none;
    cursor: pointer;
}

input[type="submit"]:hover{
    background-color: rgb(7, 231, 7);
}

fieldset{
    background-color: white;
    border: 1px solid #cccccc;
    margin: 10px;
    font-size: 17px;
}

.Gender{
    font-size: 15px;
    font-weight: 500;
}

#visa{
    width: 65px;
}

#rupay{
    width: 95px;
    height: 56px;
}

#mastercard{
    width: 65px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<form runat="server">
    <div class="container">
        <form action="">      <!--Location of Server-->
            <h1 class="main-heading">PAYMENT FORM</h1>
            <hr>
     
            
            <div>
                Accepted Cards <br>
                <div>
                    <img src="../images/Visa card.png" alt="Visa" class="cards" id="visa">
                    <img src="./images/rupay card.png" alt="Rupay" class="cards" id="rupay">
                    <img src="./images/master card.png" alt="MasterCard" class="cards" id="mastercard">
                </div>
                Card Type: *
                
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select a card type</asp:ListItem>
                    <asp:ListItem>visa card</asp:ListItem>
                    <asp:ListItem>master card</asp:ListItem>
                    <asp:ListItem>rupay card</asp:ListItem>
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div>
                Card Number:&nbsp; <asp:TextBox ID="TextBox1" class="card_number" runat="server" 
                    MaxLength="16"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>


                
            </div>
            <div>
                Expiration Date:&nbsp; 
                <asp:TextBox ID="TextBox2" class="card_number" runat="server" 
                    MaxLength="16" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div>
                CVV: 
                <asp:TextBox ID="TextBox3" class="card_number" runat="server" 
                    MaxLength="4" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator> 
            </div>
        <asp:Button ID="Button1" runat="server" Text="pay" onclick="Button1_Click" />
        </form>

    </div>
    </form>
</body>

</html>
</asp:Content>
