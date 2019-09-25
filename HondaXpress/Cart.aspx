<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HondaXpress.Cart" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="navbar-collapse collapse" id="navbarResponsive" hidden>
                        <ul class="navbar-nav mr-auto mr-lg-n5 ml-lg-auto mt-lg-0 navbar-right">
                            <li class="nav-item"><a class="nav-link" href="Homepage.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Products.aspx">Products</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                            <li class="nav-item active"><a class="nav-link" href="Registration.aspx">Register</a></li>
                            <li>
                                <button id="btnCart" type="button" class="btn btn-primary navbar-btn">
                                    Cart <span class="badge badge-light" id="pCount" runat="server"></span>
                                </button>
                            </li>
                        </ul>
                    </div>


    <div style="padding-top: 50px;">
        <div class="col-md-6">
            <div class="media" style="border: 1px solid #eaeaec">
                <img width="200" src="Images/Products/typeR.jpg" class="mr-3" alt="...">

                <div class="media-body">
                    <h5 class="mt-0" style="font-size: 15px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: white;">2019 Honda Civic Type-R</h5>
                    <span style="font-size: 14px; line-height: 17px; font-family: sans-serif; font-weight: 600; color: white;"><span>USD $</span>32,999.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <input id="Text1" style="width: 24px; height: 15px; font-size: x-small;" type="text" value="1" />&nbsp;&nbsp;<span>Total:  </span>
                    <p>
                        <asp:Button class="remCart" ID="btnRemFromCart" OnClick="btnRemFromCart_Click" CssClass="btn-warning" runat="server" Text="Remove from Cart" Style="border-radius: 3px; outline: 0; margin-top: 10px; font-size: 13px; min-height: 22px; min-width: 90px; font-weight: 500;" />

                    </p>
                </div>
            </div>
        </div>
        <div style="margin-top:50px">

        </div>

        <div class="col-md-6">
            <div class="media" style="border: 1px solid #eaeaec">
                <img width="200" src="Images/Products/civic.jpg" class="mr-3" alt="...">

                <div class="media-body">
                    <h5 class="mt-0" style="font-size: 15px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: white;">2019 Honda Civic</h5>
                    <span style="font-size: 14px; line-height: 17px; font-family: sans-serif; font-weight: 600; color: white;">USD $28,999.00</span>
                    <p>
                        <asp:Button class="remCart" ID="Button1" OnClick="btnRemFromCart_Click" CssClass="btn-warning" runat="server" Text="Remove from Cart" Style="border-radius: 3px; outline: 0; margin-top: 10px; font-size: 13px; min-height: 22px; min-width: 90px; font-weight: 500;" />

                    </p>
                </div>
            </div>
        </div>

        <div style="margin-top:50px">

        </div>

        <div class="col-md-6">
            <div class="media" style="border: 1px solid #eaeaec">
                <img width="200" src="Images/Products/accord.jpg" class="mr-3" alt="...">

                <div class="media-body">
                    <h5 class="mt-0" style="font-size: 15px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: white;">2019 Honda Accord</h5>
                    <span style="font-size: 14px; line-height: 17px; font-family: sans-serif; font-weight: 600; color: white;">USD $30,999.00</span>
                    <p>
                        <asp:Button class="remCart" ID="Button2" OnClick="btnRemFromCart_Click" CssClass="btn-warning" runat="server" Text="Remove from Cart" Style="border-radius: 3px; outline: 0; margin-top: 10px; font-size: 13px; min-height: 22px; min-width: 90px; font-weight: 500;" />

                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4" style="">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 style="font-size: 15px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: white;"
                    runat="server" id="h1">PRICE DETAILS</h5>
                <div>
                    <label class="float-right" style="color: white">Cart Total</label>
                    <span class="float-right" style="font-size: 15px; font-family: sans-serif; font-weight: 400; color: white;">USD $$32,999.00</span>
                </div>
            </div>
            <div>
                <%--<asp:Button ID="btnBuyNow" OnClick="btnBuyNow_Click" CssClass="btn-success" runat="server" Text="BUY NOW" Style="border-radius: 3px; outline: 0; margin-top: 10px; margin-bottom: 20px; font-size: 13px; min-height: 22px; padding: 10px 15px; font-weight: 500; background-color: #14cda8; border: 1px solid #14cda8; color: #fff; width: 100%;" />--%>
            </div>
        </div>
    </div>

</asp:Content>
