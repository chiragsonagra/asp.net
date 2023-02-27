<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ice_cream.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<html>
     <head>
 <meta charset="UTF-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   

          <style>
       
      
       
       
       .dl
       {
           
           margin-left:150px;
          
           }
       body
       {
            background-image:url(../images/addlogo.png); 
                  background-repeat:no-repeat;
                  background-size:60px;
                  background-position:top 70px left 1400px;
                 
                   
       }
       
      :root{
   font-family: "Raleway", sans-serif;
   font-size: 16px;
   font-weight: 400;
}

*{
   margin: 0 0 17 0;
   box-sizing: border-box;
                  text-align: center;
              }


.carousel{
   position:relative;
   margin-bottom:10px;

   
}

.carousel_inner{
   width: 100%;
   overflow: hidden;
}

.carousel_inner::after{
   content: "";
   display: block;
   clear: both;
}

.carousel_item{
   position: relative;
   float: left;
   display: none;
   width: 100%;
   height:500px;
   margin-top:2%;
   margin-right: -100%;
}


.carousel_item__active,
.carousel_item__pos_prev,
.carousel_item__pos_next{
   display: block;
           top: 0px;
           left: 0px;
       }

.carousel_item__pos_prev{
   left: -100%;
}

.carousel_item__pos_next{
   left: 100%;
}

.carousel_item__prev{
   transform: translateX(100%);
   transition: transform .5s ease-in-out;
}

.carousel_item__next{
   transform: translateX(-100%);
   transition: transform .5s ease-in-out;
}


.carousel__fade .carousel_item__pos_prev,
.carousel__fade .carousel_item__pos_next{
   left: 0;
   opacity: 0;
}

.carousel__fade .carousel_item__prev,
.carousel__fade .carousel_item__next{
   transform: none;
   opacity: 1;
   transition: opacity .5s ease-in-out;
}

.carousel__fade .carousel_item__active.carousel_item__prev,
.carousel__fade .carousel_item__active.carousel_item__next{
   opacity: 0;
}


.carousel_img{
   display: block;
   width: 100%;
   
}

.carousel_caption{
   position: absolute;
   top: 0;
   left: 0;
   display: flex;
   flex-direction: column;
   justify-content: center;
   width: 100%;
   height: 100%;
   padding: 3rem 4rem;
   text-align: center;
   color: #fff;
   z-index: 1;
}

.carousel_title{
   font-family: "Montserrat", sans-serif;
   font-weight: 600;
}

.carousel_description{
   margin-top: .75rem;
   line-height: 150%;
}

.carousel_indicator{
   position: absolute;
   bottom: 1rem;
   left: 50%;
   transform: translateX(-50%);
   display: flex;
   flex-direction: row;
   gap: .5rem;
   z-index: 1;
}

.carousel_dot{
   display: block;
   padding: .25rem;
   background-color: rgba(255, 255, 255, .25);
   border: none;
   border-radius: 50%;
   cursor: pointer;
   transition: background-color .5s ease-in-out;
}

.carousel_dot__active{
   background-color: lightskyblue;
   cursor: default;
   pointer-events: none;
}

.carousel_control{
   position: absolute;
   top: 62px;
   left: -10px;
   display: flex;
   flex-direction: row;
   justify-content: space-between;
   width: 100%;
   height: 0%;
}

.carousel_button{
   display: block;
   padding-inline: 1rem;
   font-family: "Raleway", sans-serif;
   font-size: 1.375rem;
   background-color: transparent;
   color: rgba(255, 255, 255, .25);
   border: none;
   cursor: pointer;
   transition: color .25s;
   z-index: 1;
}
.dl
{
  margin-left:10px;
      
}

.carousel_button:hover{
   color: rgba(135, 206, 250, .75);
}
.num
{
    margin-left:1400px;
   
    }
.hlink
{
    margin-left:1200px;
}
              </style>
</head>
<body>

              
     
    <asp:Label ID="Label9" runat="server"></asp:Label>
              <asp:Label ID="Label7"
                   runat="server" Font-Bold="True" Font-Names="Arial Black" 
        Font-Size="Medium" ForeColor="#FF3300"></asp:Label>
              
     
   <div class="num" style="color: #FF0000;"> <asp:Label ID="Label8" runat="server"></asp:Label>
      
    </div> 
    <div class="hlink">
     
    </div>
             
   <div class="carousel">
      <div class="carousel_inner">
         <div class="carousel_item carousel_item__active">
            <img src="../images/banner1.jpg" alt="" class="carousel_img">
            
         </div>
         <div class="carousel_item">
            <img src="../images/banner2.jpg"  alt="" class="carousel_img">
         </div>
         <div class="carousel_item">
            <img src="../images/banner3.jpg" alt="" class="carousel_img">
         </div>
         
      </div>

      <div class="carousel_indicator">
         <button class="carousel_dot carousel_dot__active"></button>
         <button class="carousel_dot"></button>
         <button class="carousel_dot"></button>
      </div>

      <div class="carousel_control">
         <button class="carousel_button carousel_button__prev">
            <i class="fas fa-chevron-left"></i>
         </button>
         <button class="carousel_button carousel_button__next">
            <i class="fas fa-chevron-right"></i>
         </button>
      </div>
   </div>

   <script>  
      

                    let onSlide = false;

                    window.addEventListener("load", () => {
                       autoSlide();

                       const dots = document.querySelectorAll(".carousel_dot");
                       for (let i = 0; i < dots.length; i++) {
                          dots[i].addEventListener("click", () => slide(i));
                       }

                       const buttonPrev = document.querySelector(".carousel_button__prev");
                       const buttonNext = document.querySelector(".carousel_button__next");
                       buttonPrev.addEventListener("click", () => slide(getItemActiveIndex() - 1));
                       buttonNext.addEventListener("click", () => slide(getItemActiveIndex() + 1));
                    })

                    function autoSlide() {
                       setInterval(() => {
                          slide(getItemActiveIndex() + 1);
                       }, 3000); // slide speed = 3s
                    }

                    function slide(toIndex) {
                       if (onSlide)
                          return;
                       onSlide = true;

                       const itemsArray = Array.from(document.querySelectorAll(".carousel_item"));
                       const itemActive = document.querySelector(".carousel_item__active");
                       const itemActiveIndex = itemsArray.indexOf(itemActive);
                       let newItemActive = null;

                       if (toIndex > itemActiveIndex) {
                          
                          if (toIndex >= itemsArray.length) {
                             toIndex = 0;
                          }

                          newItemActive = itemsArray[toIndex];

                         
                          newItemActive.classList.add("carousel_item__pos_next");
                          setTimeout(() => {
                             newItemActive.classList.add("carousel_item__next");
                             itemActive.classList.add("carousel_item__next");
                          }, 20);
                       } else {
                         
                          if (toIndex < 0) {
                             toIndex = itemsArray.length - 1;
                          }

                          newItemActive = itemsArray[toIndex];

                        
                          newItemActive.classList.add("carousel_item__pos_prev");
                          setTimeout(() => {
                             newItemActive.classList.add("carousel_item__prev");
                             itemActive.classList.add("carousel_item__prev");
                          }, 20);
                       }

                    
                       newItemActive.addEventListener("transitionend", () => {
                          itemActive.className = "carousel_item";
                          newItemActive.className = "carousel_item carousel_item__active";
                          onSlide = false;
                       }, {
                          once: true
                       });

                       slideIndicator(toIndex);


                    }

                    function getItemActiveIndex() {
                       const itemsArray = Array.from(document.querySelectorAll(".carousel_item"));
                       const itemActive = document.querySelector(".carousel_item__active");
                       const itemActiveIndex = itemsArray.indexOf(itemActive);
                       return itemActiveIndex;
                    }

                    function slideIndicator(toIndex) {
                       const dots = document.querySelectorAll(".carousel_dot");
                       const dotActive = document.querySelector(".carousel_dot__active");
                       const newDotActive = dots[toIndex];

                       dotActive.classList.remove("carousel_dot__active");
                       newDotActive.classList.add("carousel_dot__active");
                    }
            </script>
            
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
          
 

              <br />
          
 
           <div class="dl">
           
               
               
           
                 
           
               
               
           
               
        <asp:DataList ID="DataList1" runat="server"
        DataSourceID="SqlDataSource1" DataKeyField="id" RepeatColumns="4" 
        RepeatDirection="Horizontal" Width="500px" class="dl" 
        CellPadding="10"  margin-top="10px" margin-right="300px" Font-Bold="False" 
        Font-Names="Verdana" Font-Size="Larger" onitemcommand="DataList1_ItemCommand" 
                   HorizontalAlign="Center"   >
         <EditItemStyle BackColor="#97FFFF" ForeColor="#80FFFF" 
         Width="0px" />
             <ItemTemplate>
                 <asp:Image ID="Image1" runat="server" Height="350px" ImageAlign="Middle" 
                     ImageUrl='<%# Eval("image") %>' />
                 <br />
               <center>  id:<asp:Label ID="Label6" runat="server" Text='<%# Eval("id") %>'></asp:Label></center>

                 <center><asp:Label ID="Label1" runat="server" Text="name :"></asp:Label>
                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></center>
                 
                <center> <asp:Label ID="Label3" runat="server" Text="price :"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label></center>

                <center> 
                    Quantity: 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </center>
                 

                     <asp:ImageButton ID="ImageButton1"
                     runat="server" Width="150px"
                        CommandName="AddToCart" 
                         ImageUrl="~/images/addtocart.png"  
                          CommandArgument='<%# Eval("id")%>' onclick="ImageButton1_Click" />
                     
                 


                 <br />

                     
                 


             </ItemTemplate>
               
        
         

    </asp:DataList>
     
   </body>


</html>

  </form> 
    
     

              

   
    
</asp:Content>
