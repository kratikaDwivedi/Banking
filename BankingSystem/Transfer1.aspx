<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transfer1.aspx.cs" Inherits="BankingSystem.Transfer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Banking System</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
  <link href="css/StyleSheet1.css" rel ="stylesheet" />

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
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                     <a class ="navbar-brand" href ="Default.aspx" ><span ><img src="bankimage/icon.jpg" alt="MYBANKINGSYSTEM" height ="30" /></span>The Sparks Foundation </a>
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
    </div>

          <div class ="center-page">
            <label class="col-xs-11">From:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtfrom" runat="server" Class="form-control" placeholder="from"></asp:TextBox>
            </div>


            <label class="col-xs-11">To:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtto" runat="server" Class="form-control" placeholder="To"></asp:TextBox>
            </div>


            <label class="col-xs-11">Credit:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCredit" runat="server"  Class="form-control" placeholder="Enter amount"></asp:TextBox>
            </div>

                <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="txttransfer" Class="btn btn-success" runat="server" Text="Tranfer" OnClick="txttransfer_Click" />
            &nbsp;<asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
        </div>

    </form>
</body>
</html>
