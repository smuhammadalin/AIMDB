<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="watchlist.aspx.cs" Inherits="AIMDB.watchlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="aspxtemplates.com">
    <title>AIMDB - WATCHLIST</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animated.css" rel="stylesheet" type="text/css" />
    <link href="css/vegas.min.css" rel="stylesheet" type="text/css" />
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css" />
    <style> 
.search {
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

.search:focus {
    width: 100%;
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
.hidden { display: none; }

</style>
</head>
<body class="menu-hide-page">
    <form id="form1" runat="server">
    <div id="navigation" class="menu-hide">
         <div class="navbar navbar-fixed-top" role="banner">
            <div class="container">
               <div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><spanclass="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="index.htm"><img class="img-responsive" src="img/logo.jpg" alt="logo"></a></div>
               <nav id="main-menu" class="collapse navbar-collapse navbar-right">
                  <ul class="nav navbar-nav">
                     <li ><a href="welcome.aspx">Home</a></li>
                  </ul>
               </nav>
            </div>
         </div>
      </div>
      <header class="home padding-150" id="header">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="main-content text-left">
                     <h1 class="section-title">AIMDB</h1>
                     <h4 class="section-sub-title">WATCHLIST</h4>
                      <br /><br />
           <a href="#" class="btn btn-border"><i class="fa fa-mail-forward"></i>SIGN-OUT</a>
                      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                  </div>
               </div>
               
            </div>
         </div>
         <div id="copyright-header">
         </div>
      </header>
      <div id="features">
         <div class="padding-100">
            <div class="container">
               <div class="col-md-12">
                  <div class="row">
                     <h3 class="h1 col-sm-4 blue"><span class="underline">Watchlist</span></h3>
                     <div class="col-sm-8">
                         <% getwatchlist(); %>
                          <asp:GridView ID="ResultGrid" runat="server" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"></asp:GridView>
                        <br /><br /><br /><br />
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
      
      <footer>
         <div class="container">
            <div class="row footer-widgets">
               <div class="col-md-3 col-xs-12">
                  <div class="footer-widget mail-subscribe-widget social-widget wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
                     <h4> 2017 AIMDB - All Rights Reserved <span class="head-line"></span></h4>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <div class="scroll-top" data-spy="affix" data-offset-top="300"><a href="#header"><i class="fa fa-angle-up"></i></a></div>
      <script src="js/jquery.js" type="text/javascript"></script><script src="assets/js/bootstrap.min.js" type="text/javascript"></script><script src="js/jquery.backstretch.js" type="text/javascript"></script><script src="js/nav.js" type="text/javascript"></script><script src="js/vegas.min.js" type="text/javascript"></script><script src="js/owl.carousel.min.js" type="text/javascript"></script><script src="js/waypoints.min.js" type="text/javascript"></script><script src="js/counter.min.js" type="text/javascript"></script><script src="js/scroll-top.js" type="text/javascript"></script><script src="js/wow.min.js" type="text/javascript"></script><script src="js/main.js" type="text/javascript"></script>
           
    </form>
</body>
</html>
