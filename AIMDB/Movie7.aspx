<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movie7.aspx.cs" Inherits="AIMDB.Movie7" %>

<!DOCTYPE html>
<html>
<head>
<title>AIMDB - Scent of a Woman</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
    .Empty
        {
            background: url("Empty.gif") no-repeat right top;
        }
        .Empty:hover
        {
            background: url("Filled.gif") no-repeat right top;
        }
        .Filled
        {
            background: url("Filled.gif") no-repeat right top;
        }
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
.bgimg {
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(/img/posters/7.jpg);
    min-height: 100%;
}
.hidden { display: none; }
.review {
    width: 250px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

.review:focus {
    width: 100%;
}
#button
        {
            cursor: pointer;
            padding: 8px 16px;
            display: inline-block;
            margin: 10px 10px 10px 0px;
            font-size: 14px;
            outline: none;
            position: relative;
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            transition: all 0.3s ease;
            border-radius: 0px;
            -moz-box-shadow: 0 1px 6px -2px #000;
            -webkit-box-shadow: 0 1px 6px -2px #000;
            box-shadow: 0 1px 6px -2px #000;
            border: 1px solid rgba(0, 0, 0, 0.7);
            color: #fff;
            background: #333333;
            font-weight: 400
       }
 #Message
{
   color: #fff;
}
  #Message1
{
   color: #fff;
}
  .mGrid { 
    width: 100%; 
    background-color: #fff; 
    margin: 5px 0 10px 0; 
    border: solid 1px #525252; 
    border-collapse:collapse; 
}
.mGrid td { 
    padding: 2px; 
    border: solid 1px #c1c1c1; 
    color: #717171; 
}
.mGrid th { 
    padding: 4px 2px; 
    color: #fff; 
    background: #424242 url(grd_head.png) repeat-x top; 
    border-left: solid 1px #525252; 
    font-size: 0.9em; 
}
.mGrid .alt { background: #fcfcfc url(grd_alt.png) repeat-x top; }
.mGrid .pgr { background: #424242 url(grd_pgr.png) repeat-x top; }
.mGrid .pgr table { margin: 5px 0; }
.mGrid .pgr td { 
    border-width: 0; 
    padding: 0 6px; 
    border-left: solid 1px #666; 
    font-weight: bold; 
    color: #fff; 
    line-height: 12px; 
 }   
.mGrid .pgr a { color: #666; text-decoration: none; }
.mGrid .pgr a:hover { color: #000; text-decoration: none; }
</style>

     <script type="text/javascript">
 
        function Decide(option) {
 

            if (option == 1) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Empty";
                document.getElementById('Rating3').className = "Empty";
                document.getElementById('Rating4').className = "Empty";
                document.getElementById('Rating5').className = "Empty";
 

 
            }
            if (option == 2) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Empty";
                document.getElementById('Rating4').className = "Empty";
                document.getElementById('Rating5').className = "Empty";
 

            }
            if (option == 3) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Filled";
                document.getElementById('Rating4').className = "Empty";
                document.getElementById('Rating5').className = "Empty";
 

            }
            if (option == 4) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Filled";
                document.getElementById('Rating4').className = "Filled";
                document.getElementById('Rating5').className = "Empty";
 

            }
            if (option == 5) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Filled";
                document.getElementById('Rating4').className = "Filled";
                document.getElementById('Rating5').className = "Filled";
 

            }
 

            return false;
        }
 
    </script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <form id="form1" runat="server">
<!-- Sidebar with image -->
<nav class="w3-sidebar w3-hide-medium w3-hide-small" style="width:40%">
  <div class="bgimg"></div>
</nav>

<!-- Hidden Sidebar (reveals when clicked on menu icon)-->
<nav class="w3-sidebar w3-black w3-animate-right w3-xxlarge" style="display:none;padding-top:150px;right:0;z-index:2" id="mySidebar">
  <a href="javascript:void(0)" onclick="closeNav()" class="w3-button w3-black w3-xxxlarge w3-display-topright" style="padding:0 12px;">
    <i class="fa fa-remove"></i>

  </a>
    <div class="w3-bar-block w3-center">
        <a href="welcome.aspx" class="w3-bar-item w3-button w3-text-grey w3-hover-black" onclick="closeNav()">Home</a>
    <div class="w3-bar">
        <a href="#" class="w3-bar-item w3-button w3-text-grey w3-hover-black" onclick="closeNav()"><asp:button runat="server" Text=" Favorite ♥" OnClick="addfavclick" class="w3-button w3-hover-red"></asp:button></a>
        <a href="#" class="w3-bar-item w3-button w3-text-grey w3-hover-black" onclick="closeNav()"><asp:button runat="server" Text=" Add To Watchlist +" OnClick="addtowatchlist" class="w3-button w3-hover-green"></asp:button></a>
        <a href="#" class="w3-bar-item w3-button w3-text-grey w3-hover-black" onclick="closeNav()"><asp:Button runat="server" Text="Submit Review" OnClick="writereviewclick" class="w3-button w3-hover-yellow"></asp:Button></a>
    </div>
        <div class="w3-padding-32 w3-content w3-text-grey" id="contact" style="margin-bottom:64px">
    
      <p><asp:TextBox ID="Review" runat="server" placeholder="Review" CssClass="review"></asp:TextBox></p>
  <br />
    <p>Rate</p>
     <a href="#" class="w3-bar-item w3-button w3-text-grey w3-hover-black" onclick="closeNav()"><asp:ImageButton BorderStyle="None" ImageUrl="~/img/stars.jpeg" onmouseover="Decide(1);"
        Height="20px" Width="20px" CssClass="Empty" runat="server"
        onclick="Rating1_Click" ></asp:ImageButton>
      
          <asp:ImageButton BorderStyle="None" ImageUrl="~/img/stars.jpeg" onmouseover="Decide(1);"
        Height="20px" Width="20px" CssClass="Empty" runat="server"
        onclick="Rating2_Click" ></asp:ImageButton>
        
        <asp:ImageButton BorderStyle="None" ImageUrl="~/img/stars.jpeg" onmouseover="Decide(1);"
        Height="20px" Width="20px" CssClass="Empty" runat="server"
        onclick="Rating3_Click" ></asp:ImageButton>

        <asp:ImageButton BorderStyle="None" ImageUrl="~/img/stars.jpeg" onmouseover="Decide(1);"
        Height="20px" Width="20px" CssClass="Empty" runat="server"
        onclick="Rating4_Click" ></asp:ImageButton>
       
         <asp:ImageButton BorderStyle="None" ImageUrl="~/img/stars.jpeg" onmouseover="Decide(1);"
        Height="20px" Width="20px" CssClass="Empty" runat="server"
        onclick="Rating5_Click" ></asp:ImageButton></a>

    <asp:Button BorderStyle="None" ID="Rating1" CssClass="Empty" runat ="server"
        onclick="Rating1_Click" />
    <asp:Button BorderStyle="None" ID="Rating2" CssClass="Empty" runat="server"
        onclick="Rating2_Click" />
    <asp:Button BorderStyle="None" ID="Rating3" CssClass="Empty" runat="server"
        onclick="Rating3_Click" />
    <asp:Button BorderStyle="None" ID="Rating4" CssClass="Empty" runat="server"
        onclick="Rating4_Click" />
    <asp:Button BorderStyle="None" ID="Rating5" CssClass="Empty" runat="server"
        onclick="Rating5_Click" />
    <br />
    <asp:Label ID="lblRate" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Message1" runat="server" Text=" "></asp:Label>
            
  </div>
  </div>
</nav>

<!-- Page Content -->
<div class="w3-main w3-padding-large" style="margin-left:40%">

  <!-- Menu icon to open sidebar -->
  <span class="w3-button w3-top w3-white w3-xxlarge w3-text-grey w3-hover-text-black" style="width:auto;right:0;" onclick="openNav()"><i class="fa fa-bars"></i></span>
         
  <!-- Header -->
  <header class="w3-container w3-center" style="padding:128px 16px" id="home">
    <h1 class="w3-jumbo"><b>Scent of a Woman</b></h1>
           <%movieinfo("Scent of a Woman");%>
    <p>Year: <asp:label ID="year" runat="server"></asp:label><br />
       Director: <asp:label ID="director" runat="server"></asp:label><br />
       Genre: <asp:label ID="genre" runat="server"></asp:label><br />
       Cast:<asp:label ID="actor" runat="server"></asp:label>, <asp:label ID="actor2" runat="server" BorderColor="White" ></asp:label><br />
       Favorites: <asp:label ID="fav" runat="server"></asp:label><br />
       Rating: <asp:label ID="rate" runat="server"></asp:label><br />
           <%moviereview("Scent of a Woman"); %>
             <asp:GridView ID="SearchResultGrid" runat="server" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"></asp:GridView>
        <asp:Label ID="Message" runat="server" Text=" "></asp:Label>
                      
    </p>
  </header>
            </form> 

    

  
  <!-- Footer -->
  <footer class="w3-container w3-padding-64 w3-light-grey w3-center w3-opacity w3-xlarge" style="margin:-24px">
    <p class="w3-medium">2017 AIMDB - All Rights Reserved</p>
  <!-- End footer -->
  </footer>
  
<!-- END PAGE CONTENT -->
</div>

<script>
    // Open and close sidebar
    function openNav() {
        document.getElementById("mySidebar").style.width = "60%";
        document.getElementById("mySidebar").style.display = "block";
    }

    function closeNav() {
        document.getElementById("mySidebar").style.display = "none";
    }
</script>

</body>
</html>
