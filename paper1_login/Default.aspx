<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
<table width="50%" border="2" id="reg">
    <tr>
        <td colspan="2"><center><h2>Login Form</h2></center></td>
    </tr>
    <tr>
        <td>UserName: </td>
        <td>
            <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtnm" Display="Dynamic" ErrorMessage="UserName Compulsory" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password: </td>
        <td>
            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Password Compulsory" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
        <center>
            <asp:Button ID="btnsbmt" runat="server" Text="LOGIN" /> &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnclr" runat="server" Text="CLEAR" />
            </center>
        </td>
    </tr>
    <tr>
    <td colspan="2">
           <center>
        <asp:Label ID="lblmsg" runat="server" Text="Label" BackColor="#66CCFF" ForeColor="Red"></asp:Label>
        </center>
        </td>
    </tr>
   
</table>
    </form>
</body>
</html>
