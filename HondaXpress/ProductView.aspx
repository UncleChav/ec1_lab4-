<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="HondaXpress.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top: 50px">
        <div class="col-md-5">
            <asp:Repeater ID="rptrImages" runat="server">
                <ItemTemplate>
                    <div style="max-width: 480px" class="img-thumbnail">
                        <img class="img-thumbnail" src="Images/Products/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("PID") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>">
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="col-md-7">
        <asp:Repeater ID="rptrProductDetails" runat="server">
            <ItemTemplate>
                <div class="divDet1">
                    <h1 class="proNameView"><%#Eval("PName") %></h1>
                    <span class="proOgPriceView"><%#Eval("PPrice") %></span>
                </div>
                <div class="divDet1">
                    <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" CssClass="btn btn-danger" runat="server" Text="ADD TO CART" />
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
</asp:Content>
