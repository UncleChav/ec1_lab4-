<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HondaXpress.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="center-page" style="width: 300px; height: 300px; position: absolute; top: -40px; bottom: 0; left: 0; right: 0; margin: auto;">

          <h4 style="font-size: medium">Log In</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <pW>
               <asp:Literal runat="server" ID="StatusText" />
            </pW>
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

           <div class="col-xs-11">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click" />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Registration.aspx">Sign Up</asp:LinkButton>
            </div>
          <%--<asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="">Sign Up</asp:LinkButton>--%>




          </div>
</asp:Content>
