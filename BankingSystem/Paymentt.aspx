<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paymentt.aspx.cs" Inherits="BankingSystem.Paymentt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Payment History</title>
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
                        <li class="active"><a href="Paymentt.aspx">Payment History</a> </li>
                           <li id="btnPay" runat="server"><a href="Transfer1.aspx">Transfer Money</a> </li>
                        <li id="btnPayHist" runat="server"><a href="Default.aspx"> Home</a> </li>
                        <li id="btnCustom" runat="server"><a href="Customer.aspx">Customer Details</a> </li>
                       <li id="btnView" runat="server"><a href="ViewAllCust.aspx">View All Customer</a> </li>
                        
                         </ul> 
                    </div>
                </div>
         </div>
         <br />
        <br />
        <br />
         <h1>Payment History</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> Payment History</div>
     <asp:Repeater ID="Repeater1" runat="server">
         <HeaderTemplate>
                          <table class="table">
                  <thead>
                    <tr>
                        <th>ID</th>
                        <th>Senders</th>
                        <th>Recievers</th>
                        <th>Credit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>
          <ItemTemplate>
             <tr>
                 <th> <%# Eval("Uid") %> </th>
                    <th> <%# Eval("sender") %> </th>
                    <td><%# Eval("reciever") %>   </td>
                 <td><%# Eval("credit") %>   </td>

                    
                </tr>
         </ItemTemplate>
     </asp:Repeater>
    </div>
    </>
    </form>
</body>
</html>
