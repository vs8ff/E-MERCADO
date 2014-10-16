<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerEnterItems.aspx.cs" Inherits="FarmerEnterItems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<style type="text/css">
#tab{position:absolute;
					top:16%;
					left:38%;}

</style>
<body>
    <form id="form1" runat="server">
        <div id="tab">
        <h1>Enter Your Items Here</h1>
        </div>
        <table align="center" border="5" width="30%" cellpadding="10px" cellspacing="05px" >
        <tr>
        <td>
        <div><strong>Item Name:</strong> <input id="Text1" type="text" name="ItemName" size="25" maxlength="15" placeholder="Enter your Item Name" runat="server" />
        </td>
        </tr>
        </br></br>
        <tr>
        <td>
        <strong>Item Quantity:</strong> <input id="Text2" type="text" name="ItemQuantity" size="25" maxlength="15" placeholder="Enter Item Quantity" runat="server" />
        </td>
        </tr>
        </br></br>
        <tr>
        <td>
        <strong>Item Cost:</strong> <input id="Text3" type="text" name="ItemCost" size="25" maxlength="15" placeholder="Enter Item Cost" runat="server" />
        </td>
        </tr>
        </br></br>
        <tr>
        <td>
        <strong>Date:</strong> <input id="Text4" type="text" name="Username1" size="25" maxlength="15" placeholder="Enter Date" runat="server" />
        </tr>
        </td>
        </br></br>
        <tr>
        <td>
        <input id="Button1" type="button" value="Submit!" onclick="submitbutton_Click" runat="server" /></div>
        </td>
        </tr>        
        </table>
        
    </form>
</body>
</html>
