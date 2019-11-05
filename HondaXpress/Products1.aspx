<%@ Page Title="Products" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Products1.aspx.cs" Inherits="HondaXpress.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="products.css" />

    <script src="products.js"></script>
       

    <section class="container content-section">

        <h2 class="section-header">Vehicles</h2>
        <div class="shop-items">
            <div class="row">

                <div class="shop-item form-group">
                    <span class="shop-item-title">2019 Honda Civic Type-R</span>
                    <img class="shop-item-image" src="Images/Products/typeR.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$32,000.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                    </div>

                    <div class="shop-item form-group">
                    <span class="shop-item-title">2018 Honda Civic Touring</span>
                    <img class="shop-item-image" src="Images/Products/civic.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$28,000.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item form-group">
                    <span class="shop-item-title">2019 Honda Accord Ex</span>
                    <img class="shop-item-image" src="Images/Products/accord.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$30,000.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container content-section">
        <h2 class="section-header">CART</h2>
        <div class="cart-row">
            <span class="cart-item cart-header cart-column">ITEM</span>
            <span class="cart-price cart-header cart-column">PRICE</span>
            <span class="cart-quantity cart-header cart-column">QUANTITY</span>
        </div>
        <div class="cart-items">
        </div>
        <div class="cart-total">
            <strong class="cart-total-title">Total</strong>
            <span class="cart-total-price">$0</span>
        </div>
        <button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>
    </section>


</asp:Content>


