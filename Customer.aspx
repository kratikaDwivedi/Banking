<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="BankingSystem.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Customer Detail</title>
     <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous" >   </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
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
                       <li id="btnView" runat="server"><a href="ViewAllCust.aspx">View All Customer</a> </li>
                        <li id="btnPayHist" runat="server"><a href="Paymentt.aspx">Payment History</a> </li>
                          <li id="Li1" runat="server"><a href="Transfer1.aspx">Transfer</a> </li>
                         <li class="active" ><a href ="Customer.aspx">Customer Details</a> </li>
                         </ul> 
                    </div>
                </div>
         </div>
    </div>

         <div class ="center-page">
            <label class="col-xs-11">Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtname" runat="server" Class="form-control" placeholder="Enter Your Name "></asp:TextBox>
            </div>


            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Enter Your Email "></asp:TextBox>
            </div>


            <label class="col-xs-11">Current Balance:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCurrent" runat="server"  Class="form-control" placeholder="Enter Your Amount"></asp:TextBox>
            </div>

                <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="txtadd" Class="btn btn-success" runat="server" Text="Add" OnClick="txtadd_Click" />
            &nbsp;<asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
