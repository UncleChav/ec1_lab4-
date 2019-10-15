<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="HondaXpress.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <title>HondaXpress</title>

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

        .auto-style2 {
            width: 99%;
            margin-top: 13px;
        }
    </style>
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
                            <li class="nav-item active"><a class="nav-link" href="Homepage.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Products.aspx">Products</a></li>
                            <li class="nav-item"><a class="nav-link" href="About.aspx">About Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="Registration.aspx">Sign Up</a></li>
                            <li class="nav-item"><a class="nav-link" href="Login.aspx">Sign In</a></li>
                            
                        </ul>
                    </div>
                </div>
            </nav>


            <!------------- Carousel -------->

            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Images/Cars/car1.jpg" class="d-block w-100" alt="..." />
                        <div class="carousel-caption">
                            <h3>2018 Honda Civic Type-R</h3>
                            <p>Starting at $26,999.00</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Cars/car6.jpg" class="d-block w-100" alt="..." />
                        <div class="carousel-caption">
                            <h3>2019 Honda Accord </h3>
                            <p>Starting at $28,999.00</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Cars/car2.jpg" class="d-block w-100" alt="..." />
                        <div class="carousel-caption">
                            <h3>2016 Honda Civic touring </h3>
                            <p>Starting at $22,999.00</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>



    </form>
    <footer class="page-footer font-small blue bg-dark ">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            © 2018 Copyright:
    <a href="Homepage.aspx">HondaXpress</a>
        </div>
        <!-- Copyright -->

    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
