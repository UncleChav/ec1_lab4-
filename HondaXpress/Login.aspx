<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HondaXpress.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

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
</head>
<body style="background-color:darkgrey">
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
                            <li class="nav-item active" id="btnSignin" runat="server"><a class="nav-link" href="Login.aspx">Sign In</a></li>
                            
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="center-page" style="width: 300px; height: 300px; position: absolute; top: -40px; bottom: 0; left: 0; right: 0; margin: auto;">

          <h4 style="font-size: medium">Log In</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
               <asp:Literal runat="server" ID="StatusText" />
         </asp:PlaceHolder>
          
           <label class="col-xs-11">First Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqFname" runat="server" ControlToValidate="txtFname" ErrorMessage="Please Enter Your First Name" Font-Bold="False" Font-Italic="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

          <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" placeholder="Password" type="password" title="    
    The string must be 8 characters or longer
    The string must contain at least 1 upper alphabetical character [A-Z]
    The string must contain at least 1 lowercase alphabetical character [a-z]
    The string must contain at least 1 numeric character
    The string must contain at least one special character"></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="strongPwd" runat="server" ErrorMessage="Password Not Strong" ValidationExpression="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})" ControlToValidate="txtPwd" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                <br />
                <asp:RequiredFieldValidator ID="reqPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please enter a password" Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
          <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                    </div>
                </div>

           <div class="col-xs-11">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click" />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Registration.aspx">Sign Up</asp:LinkButton>
            </div>




          </div>
        </div>
    </form>


    <footer class="page-footer font-small blue footer-pos">

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
