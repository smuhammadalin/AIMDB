<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="AIMDB.Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <title>AIMDB - HOME</title>
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
 #Message
{
   color: #fff;
}

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
                     <li class="active"><a href="#navigation">Home</a></li>
                     <li><a href="#features">Most Popular Movie</a></li>
                     <li><a href="#description">Most Popular Actor</a></li>
                     <li><a href="#screenshots">AIMDB Awards</a></li>
                     <li><a href="#reviews">Our Team</a></li>
                     <%--<li><a href="#contact">contact</a></li>--%>
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
                     <h4 class="section-sub-title">Your One Stop For Everything Movies Related</h4>
                      <asp:TextBox ID="Search" runat="server" placeholder="Search" CssClass="search" onclick="searchmovieclick"></asp:TextBox><br /> <br />
               <asp:Button ID="SearchButton" runat="server" Text="SEARCH" OnClick="searchmovieclick" CssClass="hidden"></asp:Button><br /> <br />
                       <asp:Label ID="Message" runat="server" Text=" " Font-Size="25px" font-color="solid white"></asp:Label>
                      
          <asp:GridView ID="SearchResultGrid" runat="server" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
              <Columns>
                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="mylink" runat="server"

                                                NavigateUrl= '<%# "Movie" + get() + ".aspx" %>'
                                                Text= '<%# name() %>' ToolTip="Go To Movie Page"/>
                                        </ItemTemplate>
                                    </asp:TemplateField></Columns></asp:GridView>
           <a href="watchlist.aspx" class="btn btn-border"><span class="glyphicon glyphicon-bookmark"></span>&nbsp WATCHLIST</a> <a href="main.aspx" onclick="signout" class="btn btn-border"><i class="fa fa-mail-forward"></i>SIGN-OUT</a>
                      <br /><br /><br />
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
                     <h3 class="h1 col-sm-4 blue"><span class="underline">Most Popular Movie</span></h3>
                     <div class="col-sm-8">
                        <h4 class="h2"><ul class="horizontalLinks">
                            <%getfavmovie(); %>
                           <p><asp:label ID="movie" runat="server"></asp:label></p>
                           
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
      <div id="description">
          <div class="padding-100">
         <div class="container">
                  <div class="col-md-12">
                     <div class="row">
                        <h3 class="h1 col-sm-4 blue"><span class="underline">Most Popular Actor</span></h3>
                        <div class="col-sm-8">
                        <h4 class="h2"><ul class="horizontalLinks">
                              <%getfavactor(); %>
                           <p><asp:label ID="actor" runat="server"></asp:label></p>
                           
                        </ul>
                     </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <div id="screenshots">
                       <a href="Awards.aspx"><asp:image id="img" runat="server" imageurl="img/awardsbanner.jpg" /></a>
      </div>
        <div id="reviews" class="white-bg padding-100">
            
            <div class="container">
               <div class="col-md-12">
                  <div class="row">
                     <h3 class="h1 col-sm-4 blue"><span class="underline">Our Team</span></h3>
                  </div>
               </div>
            </div>
         
        <section id="teams" class="section teams">
            <br /><br /><br />
        <div class="container">
            <br />
            <div class="row">
             <div class="headingsyle">
           </div>
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="img/team/0.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4><strong>&nbsp Neha Akram</strong></h4>
                        </div>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="#"><span class="fa fa-facebook"></span></a>
                    </div><!-- person -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="img/team/2.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4><strong>&nbsp Alizeh Asim</strong></h4>
                        </div>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://facebook.com/alizeh.asim" class=""><span class="fa fa-facebook"></span></a>
                    </div><!-- person -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="img/team/1.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4><strong>Muhammad Ali</strong></h4>
                        </div>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://facebook.com/smuhammadalin" class=""><span class="fa fa-facebook"></span></a>
                    </div><!-- person -->
                </div>
                
            </div>
            <br /><br /><br /><br />
        </div>
                      
    </section>
     
      <footer>
         <div class="container">
            <div class="row footer-widgets">
               <div class="col-md-3 col-xs-12">
                  <div class="footer-widget mail-subscribe-widget social-widget wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
                     <h4> 2019 AIMDB - All Rights Reserved <span class="head-line"></span></h4>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <div class="scroll-top" data-spy="affix" data-offset-top="300"><a href="#header"><i class="fa fa-angle-up"></i></a></div>
      <script src="js/jquery.js" type="text/javascript"></script><script src="assets/js/bootstrap.min.js" type="text/javascript"></script><script src="js/jquery.backstretch.js" type="text/javascript"></script><script src="js/nav.js" type="text/javascript"></script><script src="js/vegas.min.js" type="text/javascript"></script><script src="js/owl.carousel.min.js" type="text/javascript"></script><script src="js/waypoints.min.js" type="text/javascript"></script><script src="js/counter.min.js" type="text/javascript"></script><script src="js/scroll-top.js" type="text/javascript"></script><script src="js/wow.min.js" type="text/javascript"></script><script src="js/main.js" type="text/javascript"></script>
            <br />
    </form>
</body>
</html>
