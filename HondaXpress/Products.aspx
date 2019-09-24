<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="HondaXpress.Product" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="padding-top: 50px">
        <div class="col-md-5" style="left: 0px; top: 0px">
            <div style="max-width: 280px" class="thumbnail">
                <img class="car" height="350" width="300" src="Images/Products/typeR.jpg" />
            </div>
        </div>

        <div class="col-md-7" style="left: 316px; top: -349px; margin-top: 0px">
            <div style="border-bottom: 1px dashed #696e80; margin-top: 20px">
                <h1 style="font-size: 20px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: #696e80">1001 || 2019 Honda Civic Type-R</h1>
                <p style="font-size: 16px; line-height: 17px; font-family: sans-serif; font-weight: 600; margin-top: 10px">USD $32,999.00</p>
            </div>
            <div style="border-bottom: 1px dashed #696e80; margin-top: 20px">
                <asp:Button class="addCart" ID="btnAddToCart" OnClick="btnAddToCart_Click" Style="margin-bottom: 20px" CssClass="btn-secondary" runat="server" Text="Add to Cart" />
            </div>
            <div>
                <h5 style="font-weight: bold; font-size: inherit">Description</h5>
                <p>
                    Wrapped in an iconic red engine cover, the 2.0-liter VTEC® turbocharged engine is 70 years of Honda engineering for the track distilled into one Civic—the Type R.

                </p>
            </div>


        </div>
    </div>

    <div style="padding-top: 10px">
        <div class="col-md-5" style="left: 0px; top: 0px">
            <div style="max-width: 280px" class="thumbnail">
                <img class="car" height="350" width="300" src="Images/Products/civic.jpg" />
            </div>
        </div>

        <div class="col-md-7" style="left: 316px; top: -349px; margin-top: 0px">
            <div style="border-bottom: 1px dashed #696e80; margin-top: 20px">
                <h1 style="font-size: 20px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: #696e80">1002 || 2019 Honda Civic</h1>
                <p style="font-size: 16px; line-height: 17px; font-family: sans-serif; font-weight: 600; margin-top: 10px">USD $28,999.00</p>
            </div>
            <div style="border-bottom: 1px dashed #696e80; margin-top: 20px">
                <asp:Button class="addCart" ID="addCart" Style="margin-bottom: 20px" OnClick="btnAddToCart_Click" CssClass="btn-secondary" runat="server" Text="Add to Cart" />
            </div>
            <div>
                <h5 style="font-weight: bold; font-size: inherit">Description</h5>
                <p>
                    The 2019 Civic Sedan features aggressive lines and refined features that make it stand out from the crowd.
                    Signature C-shaped taillights, a sleek profile and a new Sport trim add to its fierce personality.
                </p>
            </div>


        </div>
    </div>

    <div style="padding-top: 50px">
        <div class="col-md-5" style="left: 0px; top: 0px">
            <div style="max-width: 280px" class="thumbnail">
                <img class="car" height="350" width="300" src="Images/Products/accord.jpg" />
            </div>
        </div>

        <div class="col-md-7" style="left: 316px; top: -349px; margin-top: 0px">
            <div style="border-bottom: 1px dashed #696e80; margin-top: 20px">
                <h1 style="font-size: 20px; line-height: 25px; font-family: sans-serif; font-weight: 600; color: #696e80">1003 || 2019 Honda Accord</h1>
                <p style="font-size: 16px; line-height: 17px; font-family: sans-serif; font-weight: 600; margin-top: 10px">USD $30,999.00</p>
            </div>
            <div style="border-bottom: 1px dashed #696e80; margin-top: 20px">
                <asp:Button class="addCart" ID="Button2" Style="margin-bottom: 20px" OnClick="btnAddToCart_Click" CssClass="btn-secondary" runat="server" Text="Add to Cart" />
            </div>
            <div>
                <h5 style="font-weight: bold; font-size: inherit">Description</h5>
                <p>
                    Sporting a distinctive, fastback-inspired roofline and kinetic body lines, the 2019 Accord boasts the modern look of a sophisticated sedan. 
                </p>
            </div>


        </div>
    </div>


    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>


      
            $(".car").draggable({
                cursor: "grabbing",
                helper: "clone",
                opacity: 0.3,
            });

        $(".addCart").droppable({drop: function (event, ui) {
               
                 $(function () {
            debugger;
            $.ajax({
                type: 'POST',
                url: 'Hompepage.aspx.cs/BindCartNumber',
                data: "{'args':'test'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                     alert("droppped");
                },
                Error:function(msg){
                    //give alert if ur functuion got some error
                }
            });
        });
            }
        });
            $("#pCount").droppable();
       

    </script>
</asp:Content>


