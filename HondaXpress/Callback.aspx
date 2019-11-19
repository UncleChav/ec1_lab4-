<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Callback.aspx.cs" Inherits="HondaXpress.Callback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1 runat="server" id="h1Message"></h1>
                <p>Click here to go to home</p>
                <p><a class="btn btn-primary btn-lg" href="UserHome.aspx" role="button">Home</a></p>
            </div>
        </div>
    </form>
</body>
</html>
