<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="HondaXpress.UserHome" %>

<!DOCTYPE html>

<html>
<head runat="server">
      <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../products.css" />

    <title>Welcome</title>
    <style type="text/css">

        .lblSuccess{
            color:white;
        }
        .auto-style1 {
            position: absolute;
            left: 15px;
            top: 1px;
            width: 125px;
            height: 53px;
        }

        .h1,h5,p{
            color:white;
        }

        .auto-style3 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            height: 329px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .footer-pos {
            width: auto;
            height: auto;
            position: absolute;
            top: 600px;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
            
        .auto-style1 {
            position: absolute;
            left: 15px;
            top: 1px;
            width: 125px;
            height: 53px;
        }

        label, .footer-copyright {
            color: white;
        }

        .auto-style2 {
            width: 99%;
            margin-top: 13px;
        }
    
        
    </style>

      <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
                <div class="container">
                    <a class="navbar-brand" href="Homepage.aspx">
                        <span>
                            <img src="Images/logo.jpg" alt="" class="auto-style1" /></span>
                    </a>
                    <nav class="navbar-header">

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </nav>

                    <div class="navbar-collapse collapse" id="navbarResponsive">
                        <ul class="navbar-nav mr-auto mr-lg-n5 ml-lg-auto mt-lg-0 navbar-right">
                            <li class="nav-item"><a class="nav-link" href="Homepage.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Products.aspx">Products</a></li>
                            <li class="nav-item"><a class="nav-link" href="About.aspx">About Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="OrderHistory.aspx">View Order History</a></li>
                            <%--<li class="nav-item"><a class="nav-link" href="Registration.aspx">Sign Up</a></li>
                            <li class="nav-item"><a class="nav-link" href="Login.aspx">Sign In</a></li>--%>
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    View Shopping Cart  <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li>
                                <asp:Button ID="btnSignIn" runat="server" Class="btn btn-default navbar-btn" Text="Sign in" OnClick="btnSignIn_Click" />
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign out" OnClick="btnSignOut_Click" />
                            </li>


                        </ul>
                    </div>
                </div>
            </nav>
            
        </div>
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success" ForeColor="White"></asp:Label>
    </form>
</body>
</html>

