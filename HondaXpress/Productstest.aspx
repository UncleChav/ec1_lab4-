<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HondaXpress.Registration" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <title>Untitled Document</title>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="jquery-1.3.2.js"></script>
    <script type="text/javascript" src="jquery.livequery.js"></script>
    <link href="css.css" rel="stylesheet">
   
    <script type="text/javascript" src="https://s3.amazonaws.com/exthub/e/2/r/JM_chrome.js?cached=true" data-uid="Ofs3ERTWz2qHxoapQPcdcZB4Cf0NKnYG"></script>
     <script type="text/javascript">

        $(document).ready(function () {

            var Arrays = new Array();

            $('#wrap li').mousemove(function () {

                var position = $(this).position();

                $('#cart').stop().animate({

                    left: position.left + 'px',

                }, 250, function () {

                });
            }).mouseout(function () {

            });

            $('#wrap li').click(function () {

                var thisID = $(this).attr('id');

                var itemname = $(this).find('div .name').html();
                var itemprice = $(this).find('div .price').html();

                if (include(Arrays, thisID)) {
                    var price = $('#each-' + thisID).children(".shopp-price").find('em').html();
                    var quantity = $('#each-' + thisID).children(".shopp-quantity").html();
                    quantity = parseInt(quantity) + parseInt(1);

                    var total = parseInt(itemprice) * parseInt(quantity);

                    $('#each-' + thisID).children(".shopp-price").find('em').html(total);
                    $('#each-' + thisID).children(".shopp-quantity").html(quantity);

                    var prev_charges = $('.cart-total span').html();
                    prev_charges = parseInt(prev_charges) - parseInt(price);

                    prev_charges = parseInt(prev_charges) + parseInt(total);
                    $('.cart-total span').html(prev_charges);

                    $('#total-hidden-charges').val(prev_charges);
                }
                else {
                    Arrays.push(thisID);

                    var prev_charges = $('.cart-total span').html();
                    prev_charges = parseInt(prev_charges) + parseInt(itemprice);

                    $('.cart-total span').html(prev_charges);
                    $('#total-hidden-charges').val(prev_charges);

                    $('#left_bar .cart-info').append('<div class="shopp" id="each-' + thisID + '"><div class="label">' + itemname + '</div><div class="shopp-price"> $<em>' + itemprice + '</em></div><span class="shopp-quantity">1</span><img src="remove.png" class="remove" /><br class="all" /></div>');

                    $('#cart').css({ '-webkit-transform': 'rotate(20deg)', '-moz-transform': 'rotate(20deg)' });
                }

                setTimeout('angle()', 200);
            });


            $('.remove').livequery('click', function () {

                var deduct = $(this).parent().children(".shopp-price").find('em').html();
                var prev_charges = $('.cart-total span').html();

                var thisID = $(this).parent().attr('id').replace('each-', '');

                var pos = getpos(Arrays, thisID);
                Arrays.splice(pos, 1, "0")

                prev_charges = parseInt(prev_charges) - parseInt(deduct);
                $('.cart-total span').html(prev_charges);
                $('#total-hidden-charges').val(prev_charges);
                $(this).parent().remove();

            });

            $('#Submit').livequery('click', function () {

                var totalCharge = $('#total-hidden-charges').val();

                $('#left_bar').html('Total Charges: $' + totalCharge);

                return false;

            });

        });

        function include(arr, obj) {
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] == obj) return true;
            }
        }
        function getpos(arr, obj) {
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] == obj) return i;
            }
        }
        function angle() { $('#cart').css({ '-webkit-transform': 'rotate(0deg)', '-moz-transform': 'rotate(0deg)' }); }

    </script>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
        }

        #wrap {
            width: 600px;
            height: 900px;
            top: 20px;
            position: relative;
            bottom: 0px;
        }

            #wrap ul {
                margin: 0px;
                padding: 0px;
                text-align: center;
            }

        user agent stylesheet
        ul {
            display: block;
            list-style-type: disc;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            padding-inline-start: 40px;
        }

        #wrap ul li {
            cursor: pointer;
        }

        #wrap ul li {
            -moz-background-clip: padding;
            -webkit-background-clip: padding;
            background-clip: padding-box;
            border: 10px solid rgba(0,0,0,0.3);
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px;
            /* background: url(bgs.png) repeat-x scroll; */
            list-style-type: none;
            height: 150px;
            width: 160px;
            margin-left: 13px;
            margin-bottom: 15px;
            float: left;
            padding: 15px 0px 0px 0px;
            font-family: "LubalGraphBdBTBold",Tahoma;
            font-size: 2em;
            overflow: hidden;
        }

        user agent stylesheet
        li {
            display: list-item;
            text-align: -webkit-match-parent;
        }

        #left_bar {
            top: 120px;
            left: 600px;
            height: 350px;
            width: 250px;
            position: fixed;
            padding: 10px;
        }

        user agent stylesheet
        div {
            display: block;
        }

        form {
            display: block;
            margin-top: 0em;
        }

        .shopp, .cart-total {
            border: solid #ccc 1px;
            padding: 8px;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            font-size: 12px;
            background: url(remove.png) center right no-repeat 5px;
            border-radius: 8px;
            font-family: "LubalGraphBdBTBold",Tahoma;
            margin-bottom: 3px;
            width: 260px;
        }

        .cart-total {
            background: #E8E8E8;
        }
        .cart-total b {
    width: 130px;
}
        button {
    background: none repeat scroll 0 0 #AD7B05;
    color: #FFFFFF;
    border: medium none;
    font-family: "LubalGraphBdBTBold",Tahoma;
    font-size: 1.1em;
    margin-right: -14px;
    padding: 10px;
    cursor: pointer;
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;
}
user agent stylesheet
button {
    -webkit-appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: buttonface;
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}
    </style>
</head>

<body data-gr-c-s-loaded="true">

    <div style="float: left">

        <div id="wrap" style="float: left">

            <ul>
                <li id="1">
                    <img src="Images/Products/civic.jpg" class="items" height="100" alt="">

                    <div><span class="name">Learn Java: Price</span>: $<span class="price">800</span> </div>
                </li>
                <li id="2">
                    <img src="Images/Products/accord.jpg" class="items" height="100" alt="">

                 
                    <div><span class="name">Learn HTML </span>: $<span class="price">500 </span></div>
                </li>
                <li id="3">
                    <img src="Images/Products/typeR.jpg" class="items" height="100" alt="">

                  
                    <div><span class="name">Learn Android </span>: $<span class="price">450</span></div>
                </li>

               

            </ul>

            <br clear="all">
        </div>

        <div id="left_bar">

            <form action="#" id="cart_form" name="cart_form">

                <div class="cart-info"></div>

                <div class="cart-total">

                    <b>Total Charges:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> $<span>0</span>

                    <input type="hidden" name="total-hidden-charges" id="total-hidden-charges" value="0">
                </div>

                <button type="submit" id="Submit">CheckOut</button>

            </form>

        </div>



    </div>





</body>
</html>


