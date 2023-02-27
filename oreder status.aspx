<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="oreder status.aspx.cs" Inherits="ice_cream.oreder_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>

<head>
<style>

@import url('https://fonts.googleapis.com/css2?family=Rubik&display=swap');


:root {
  --line-border-fill: #3498db;
  --line-border-empty: #e0e0e0;
}


* {
 
  box-sizing: inherit;
}

html {
  box-sizing: border-box;
}

body {
  background: #F3F4F6;
  font-family: "Rubik", sans-serif;
 
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  overflow: hidden;

}

.container {
  
  margin-left:30%;
  margin-top:220px;

  text-align: center;
}

.progress-container::before {
  content: "";
  background: var(--line-border-empty);
  position: absolute;
  top: 50%;
  left: 0;
  transform: translateY(-50%);
  height: 4px;
  width: 100%;
  z-index: -1;
}

.progress-container {
  display: flex;
  justify-content: space-between;
  position: relative;

  max-width: 100%;
  width: 450px;
}

.progress {
  background: var(--line-border-fill);
  position: absolute;
  top: 50%;
  left: 0;
  transform: translateY(-50%);
  height: 4px;
  width: 0%;
  z-index: -1;
  transition: 0.4s ease;
}

.circle {
  background: #fff;
  color: #999;
  border-radius: 50%;
  height: 70px;
  width: 70px;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 3px solid var(--line-border-empty);
  transition: .4s ease;
}

.circle.active {
  border-color: var(--line-border-fill);
}

.btn {
  background-color: var(--line-border-fill);
  color: #fff;
  cursor: pointer;
  font-family: inherit;
  border: 0;
  border-radius: 6px;
  padding: 8px 30px;
  margin: 5px;
  font-size: 14px;
}

.btn:active {
  transform: scale(0.98);
}

.btn:focus {
  outline: 0;
}

.btn:disabled {
  background-color: var(--line-border-empty);
  cursor: not-allowed;
}
.placeorder
{
    margin:0px 0px 0px 450px;
}
.packed
{
margin:0px 0px 0px 70px;
}
.shipped
{
margin:0px 0px 0px 70px;
}
.delevered
{
margin:0px 0px 0px 70px;
}
.image
{
margin-top:10px; 
margin-bottom:220px;   
}

</style>
</head>
<body>
   
<form runat="server">
 <div class="container">
  <div class="progress-container">
    <div class="progress" id="progress"> </div>
    <div class="circle active">order placed</div>
    <div class="circle">packed</div>
    <div class="circle">shipped</div>
    <div class="circle">delivered
      </div>
  </div>
</div>

<div class="image">
<image class="placeorder"src="../images/placeorder.png" height="70px" width="60px"></image>
<image class="packed"src="../images/packed.jpg" height="70px" width="60px"></image>
<image class="delevered"src="../images/shipped.png" height="70px" width="60px"></image>
<image class="shipped"src="../images/deleverd.png" height="70px" width="60px"></image>

</div>

</form>

<script type="text/javascript">

var order2=getext();

const progress = document.getElementById("progress");
const stepCircles = document.querySelectorAll(".circle");
let currentActive = ;
//NOTE CHANGE HERE TO 1-4
//1=25%
//2=50%
//3=75%
//4=100%
update()

function redirectToAnotherPage() {
    var textboxValue = document.getElementById('txtMyTextbox').value;
    var url = 'AnotherPage.aspx?textboxValue=' + encodeURIComponent(textboxValue);
    window.location.href = url;
}
var textboxValue = document.getElementById('hfTextboxValue').value;
myFunction(textboxValue);

function myFunction(value) {
    // Use the value parameter in your function
    alert('The textbox value is: ' + value);
}
function update(currentActive) {
  stepCircles.forEach((circle, i) => {
    if (i < currentActive) {
      circle.classList.add("active");
    } else {
      circle.classList.remove("active");
    }
  });

  const activeCircles = document.querySelectorAll(".active");
  progress.style.width =
    ((activeCircles.length - 1) / (stepCircles.length - 1)) * 100 + "%";

  
}

</script>

</body>
</html>

</asp:Content>
