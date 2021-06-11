<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankingSystem.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Banking System</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous" >   </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
  <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="bankimage/tsf.jpg" alt="MYBANKINGSYSTEM" height="30" /></span>The Sparks Foundation
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a> </li>
                           <li id="btnPay" runat="server"><a href="Transfer1.aspx">Transfer Money</a> </li>
                        <li id="btnPayHist" runat="server"><a href="Paymentt.aspx">Payment History</a> </li>
                        <li id="btnCustom" runat="server"><a href="Customer.aspx">Customer Details</a> </li>
                       <li id="btnView" runat="server"><a href="ViewAllCust.aspx">View All Customer</a> </li>
                        
                         </ul> 
                    </div>
                </div>
          </div>
         <!---image slider---->
        <div class="container">
            <h2>
                Carousel Example</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="bankimage/back3.jpg" alt="Bank" style="width: 100%;" />
                        <div class="carousel-caption">
                            <h3>
                               Banking</h3>
                            <p>
                                Make A Payment</p>
                            <p>
                                <a class="btn btn-lg btn-primary" href="Transfer1.aspx" role="button">Transaction Now</a></p>
                        </div>
                    </div>
                     <div class="item">
                        <img src="bankimage/back.jpg" alt="bank" style="width: 100%; " />
                        <div class="carousel-caption">
                            <h3>
                                Banking</h3>
                            <p>
                                Make A Payment</p>
                            <p>
                                <a class="btn btn-lg btn-primary" href="Transfer1.aspx" role="button">Transaction Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="bankimage/Background.jpg" alt="bank" style="width: 100%;"  />
                        <div class="carousel-caption">
                            <h3>
                              Banking</h3>
                            <p>
                                Make A Payment</p>
                            <p>
                                <a class="btn btn-lg btn-primary" href="Transfer1.aspx" role="button">Transaction Now</a></p>
                        </div>
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                    href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                    </span><span class="sr-only">Next</span> </a>
            </div>
        </div>
        <!---image slider End---->
        </div>
         <!---Middle COntents start---->
    <hr />
    <div class="container center ">
        <div class="row ">
            <div class="col-lg-4">
                <img class="img-circle " src="bankimage/transaction.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Transaction</h2>
                <p>
                   Safe transaction done by our bank system....
                    Enjoy your transaction
                    Make payment
                </p>
                <p>
                    <a class="btn btn-default " href="Transfer1.aspx" role="button">View More &raquo;</a></p>
            </div>
           
                    <div class="col-lg-4">
                <img class="img-circle " src="bankimage/history.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Transaction History</h2>
                <p>
                    Details about old transaction....</p>
                <p>
                    <a class="btn btn-default " href="Paymentt.aspx" role="button">View More &raquo;</a></p>
            </div>
             </div>
    </div>
         <!---Footer COntents Start here---->
    <hr />
    <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p> 
                <p>&copy;2021 KratikaDwivediInternInTSF.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">Make A Payment</a>&middot;<a href ="#">Payment History</a> </p>
            </div>

        </footer>
    <!---Footer COntents End---->
    </form>
</body>
</html>
