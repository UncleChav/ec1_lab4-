<%@ Page Title="Products" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="HondaXpress.ProductsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
               
                 <div class="col-sm-3 col-md-3">
                    <a style="text-decoration:none;" href="ProductView.aspx?PID=<%#Eval("PID") %>">
                        <div style="max-width: 480px" class="img-thumbnail">
                            <img class="img-thumbnail" src="Images/Products/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("PID") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>">
                            <div class="caption">
                                <div class="proName"><%#Eval("PName") %></div>
                                <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span></div>
                            </div>
                        </div>
                        </a>
                </div>
                </ItemTemplate>
          </asp:Repeater>
    </div>
</asp:Content>
