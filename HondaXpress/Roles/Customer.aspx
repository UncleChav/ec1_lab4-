<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="HondaXpress.Roles.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="../products.css" />
    <title>Cart</title>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <style type="text/css">
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

</head>
<body style="background-color: #FFFFFF; background-image: none;">

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
                    <li class="nav-item"><a class="nav-link" href="../Homepage.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="../Products.aspx">Products</a></li>
                    <li class="nav-item"><a class="nav-link" href="../About.aspx">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="../Contact.aspx">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">View Order History</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">View Shopping Cart </a></li>
                </ul>
            </div>
        </div>
    </nav>

    <%--<div style="padding-top: 50px">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <img class="shop-item-image" src="../Images/Products/9/2016 Honda Civic9.jpg" />
            </div>
        </div>
    </div>
    <div class="col-md-7">
        <div class="divDet1">
            <h1 class="proNameView">2016 Honda Civic</h1>
            <span class="proOgPriceView">$32,000</span>
        </div>
        <div>
            <h5></h5>
        </div>
    </div>--%>
    <div style="padding-top: 50px">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <img class="shop-item-image" src="../Images/Products/9/2016 Honda Civic9.jpg" />
            </div>
        </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails"  runat="server">
                <ItemTemplate>
                    <div class="divDet1">
                        <h1 class="proNameView"><%#Eval("PName") %></h1>
                        <span class="proOgPriceView"><%#Eval("PPrice") %></span>
                    </div>
                    <div class="divDet1">
                        <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" CssClass="mainButton" runat="server" Text="ADD TO CART" />
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                    <div class="divDet1">
                        <h5 class="h5Size">Description</h5>
                        <p>
                            <%#Eval("PDescription") %>
                        </p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</body>
</html>
