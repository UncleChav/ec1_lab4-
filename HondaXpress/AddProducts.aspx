<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="HondaXpress.AddProducts1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Products</h2>
            <hr />

            <div class="form-group">

                <label class="col-md-2 control-label">Product Name</label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProdName" runat="server" CssClass="form-control" placeholder="Product Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqProdName" runat="server" ControlToValidate="txtProdName" ErrorMessage="Please Enter Product Name" Font-Bold="False" Font-Italic="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">

                <label class="col-md-2 control-label">Product Price</label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProdPrice" runat="server" CssClass="form-control" placeholder="Product Price"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqProductPrice" runat="server" ControlToValidate="txtProdPrice" ErrorMessage="Please Enter Product Price" Font-Bold="False" Font-Italic="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">

                <label class="col-md-2 control-label">Description</label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDesc" TextMode="MultiLine" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqDesc" runat="server" ControlToValidate="txtDesc" ErrorMessage="Please Enter Product Description" Font-Bold="False" Font-Italic="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>

        <div class="form-group">

            <label class="col-md-2 control-label">Product Image</label>
            <div class="col-md-3">
                <asp:FileUpload ID="ProdImg" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator ID="reqImg" runat="server" ControlToValidate="ProdImg" ErrorMessage="Please Upload Image" Font-Bold="False" Font-Italic="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">

            <div class="col-md-2"></div>
            <div class="col-md-6">
                <asp:Button ID="btnAddProd" runat="server" Text="Add Products" CssClass="btn btn-default" OnClick="btnAddProd_Click" />
            </div>
        </div>
    </div>
</asp:Content>
