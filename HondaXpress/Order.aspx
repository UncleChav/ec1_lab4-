<%@ Page Title="Order" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="HondaXpress.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Customcss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style4 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 58.333333%;
            flex: 0 0 58.333333%;
            max-width: 58.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style5 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            left: 751px;
            top: -338px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdCartAmount" runat="server" />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    <asp:HiddenField ID="hdPID" runat="server" />


    <div style="padding-top: 20px;">
        <div class="col-md-9">
            <div class="form-horizontal">
                <h3 style="color: #FFFFFF">Delivery Address</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name" ForeColor="White"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Address" ForeColor="White"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Mobile Number" ForeColor="White"></asp:Label>
                    <div class="auto-style4">
                        <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>
        <div class="auto-style5" runat="server" id="divPriceDetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div>
                    <label>Cart Total</label>
                    <span class="pull-right priceGray" id="spanCartTotal" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="pull-right" id="spanTotal" runat="server"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div>
                <asp:Button ID="btnPaytm" OnClick="btnPaytm_Click"  CssClass="buyNowBtn" runat="server" Text="PAY NOW" />
            </div>
            <%--<h3 style="color: #FFFFFF">Choose Payment Mode</h3>
            <hr />
            <ul class="nav nav-tabs">
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#wallets">WALLETS</a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cards">CREDIT/DEBIT CARDS</a></li>
            </ul>

            <div class="tab-content">
                <div id="wallets" class="tab-pane fade in active">
                    <h3>HOME</h3>
                    <p>Some content.</p>
                    <asp:Button ID="btnPaytm" OnClick="btnPaytm_Click" runat="server" Text="Pay with Paytm" />
                </div>
                <div id="cards" class="tab-pane fade">
                    <h3>Menu 1</h3>
                    <p>Some content in menu 1.</p>
                </div>
            </div>--%>
        </div>
    </div>
</asp:Content>
