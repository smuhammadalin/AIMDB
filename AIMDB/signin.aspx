<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="AIMDB.signin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="aimdb" content="aimdb.com">
    <title>AIMDB - SIGNIN</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animated.css" rel="stylesheet" type="text/css" />
    <link href="css/vegas.min.css" rel="stylesheet" type="text/css" />
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="sweetalert/dist/sweetalert.css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"rel="stylesheet" type="text/css" />
    <style>
        <h1>
        {
            font-size: 22px;
            color: cornflowerblue;
        }
        <h2>
        {
            font-size: 15px;
        }
        .textbox
        {
             border: 2px solid white;
             border-radius: 5px;
        }
        .password
        {
             border: 2px solid white;
             border-radius: 5px;
             width: 330px;
        }
        #sibutton
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
    </style>
</head>

<body class="menu-hide-page">
    <form id="form1" runat="server">
      <header class="home padding-150" id="header">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="main-content text-left">
                     <h1 class="section-title">AIMDB</h1>
                     <%--<h4 class="section-sub-title">DB Project</h4>--%>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="panel panel-default black">
                     <div class="panel-heading">
                        <h3 class="panel-title">SIGN-IN</h3>
                     </div>
                     <div class="panel-body black">
                        <form role="form">
                           <div class="row">
                              <asp:TextBox ID="Email" runat="server" placeholder="  Email" Width="330px" CssClass="textbox"></asp:TextBox><br /> <br />
                              <asp:RequiredFieldValidator runat="server" ID="Req1" ControlToValidate="Email" CssClass="ValidationError" Text="You must enter your email!" Font-Size="15px" ForeColor="White"/>

                               <asp:TextBox ID="Password1" runat="server" placeholder ="  Password" Width="330px" CssClass="textbox" TextMode="Password"></asp:TextBox><br /> <br />
                               <asp:RequiredFieldValidator runat="server" ID="Req2" ControlToValidate="Password1" CssClass="ValidationError" Text="You must enter your password!" Font-Size="15px" ForeColor="White"/>
                               
                              </div>
                              
                        </form>
                     </div>
                     <asp:Button ID="sibutton" runat="server" Text="SIGNIN" OnClick="signinclick"></asp:Button><br /> <br />
                  </div>
                   <asp:Label ID="Message" runat="server" Text=" " Font-Size="25px" font-color="white"></asp:Label>
        <br /> <br />
               </div>
            </div>
         </div>
                                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
      <%--<div class="scroll-top" data-spy="affix" data-offset-top="300"><a href="#header"><i class="fa fa-angle-up"></i></a></div>--%>
      <script src="js/jquery.js" type="text/javascript"></script><script src="assets/js/bootstrap.min.js" type="text/javascript"></script><script src="js/jquery.backstretch.js" type="text/javascript"></script><script src="js/nav.js" type="text/javascript"></script><script src="js/vegas.min.js" type="text/javascript"></script><script src="js/owl.carousel.min.js" type="text/javascript"></script><script src="js/waypoints.min.js" type="text/javascript"></script><script src="js/counter.min.js" type="text/javascript"></script><script src="js/scroll-top.js" type="text/javascript"></script><script src="js/wow.min.js" type="text/javascript"></script><script src="js/main.js" type="text/javascript"></script>
    </form>
</body>
</html>
