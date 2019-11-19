<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="HondaXpress.AddProducts1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <%--<div class="form-horizontal">
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
        </div>--%>

        <asp:GridView ID="GridView1" runat="server"  style="color: black; background-color: #C0C0C0;" AutoGenerateColumns="false" DataKeyNames="PID"
            OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
            <Columns>
                <asp:TemplateField HeaderText="PName" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblPName" runat="server" Text='<%#Eval("PName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPName" runat="server" Text='<%#Eval("PName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PPrice" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblPPrice" runat="server" Text='<%#Eval("PPrice") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPPrice" runat="server" Text='<%#Eval("PPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PDescription" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblPDescription" runat="server" Text='<%#Eval("PDescription") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPDescription" runat="server" Text='<%#Eval("PDescription") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        <table border="1" cellpadding="0" cellspacing="0" style="color: black; background-color: #C0C0C0; border-collapse: collapse">
            <tr>
                <td style="width: 150px">Product Name:<br />
                    <asp:TextBox ID="txtPName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Product Price:<br />
                    <asp:TextBox ID="txtPPrice" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Product Description:<br />
                    <asp:TextBox ID="txtPDescription" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Product Images:<br />
                    <asp:FileUpload ID="ProdImg" CssClass="form-control" runat="server" />
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAddProd_Click" />
                </td>
            </tr>
        </table>


    </div>
</asp:Content>
