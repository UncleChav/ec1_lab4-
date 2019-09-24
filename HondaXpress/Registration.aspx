<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HondaXpress.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <title>Register</title>

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
<body style="background-image: url('Images/bg.jpg'); background-position: 2840px 1160px">
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
                            <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                            <li class="nav-item active"><a class="nav-link" href="Registration.aspx">Register</a></li>
                        </ul>
                    </div>
                </div>
            </nav>


        </div>

        <div class="col-lg-5" style="color: white">
            Registered Members:
            
            <asp:Label ID="lblCounter" runat="server" />
        </div>
        <div class="center-page" style="width: 300px; height: 300px; position: absolute; top: -40px; bottom: 0; left: 0; right: 0; margin: auto;">



            <label class="col-xs-11">First Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqFname" runat="server" ControlToValidate="txtFname" ErrorMessage="Please Enter Your First Name" Font-Bold="False" Font-Italic="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Last Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLname" ErrorMessage="Please Enter Your Last Name" Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter an email address." Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="validEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email not in a valid format" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

            <label class="col-xs-11">DOB</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" placeholder="DOB"></asp:TextBox>
                <asp:CustomValidator ID="validDob" runat="server" ErrorMessage="Must be 18 years or older to register." Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:CustomValidator>
            </div>

            <label class="col-xs-11">Phone Number</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtTele" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="validTel" runat="server" ControlToValidate="txtTele" ErrorMessage="Invalid format, must be '###-###-####'" Font-Bold="False" Font-Italic="True" ValidationExpression="^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please enter a password" Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtConPwd" runat="server" CssClass="form-control" placeholder="Confirm Paaword"></asp:TextBox>
                <asp:CompareValidator ID="validConPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConPwd" ErrorMessage="Passwords don't match" Font-Bold="False" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>

            </div>

            <div class="col-xs-11">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnIncrement_Click" />
            </div>
        </div>


    </form>
    <footer class="page-footer font-small blue" style="width: auto; height: auto; position: absolute; top: 1200px; bottom: 0; left: 0; right: 0; margin: auto;">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            © 2018 Copyright:
    <a href="Homepage.aspx">HondaXpress</a>
        </div>
        <!-- Copyright -->

    </footer>
</body>
</html>




<script type="text/javascript">
    function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.txtDob).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;

        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                args.IsValid = false;
                return;
            }

            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {

                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018. 
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    args.IsValid = false;
                    return;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018. 
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        args.IsValid = false;
                        return;
                    }
                }
            }
            args.IsValid = true;
        } else {
            sender.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            args.IsValid = false;
        }
    }
</script>
