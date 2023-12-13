<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="2" width="100%">
        <tr>
            <td>FULLNAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="only char" 
                    SetFocusOnError="True" ValidationExpression="\[a-z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>USERNAME</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="ente nam" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>RETYPE</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="CompareValidator" Operator="NotEqual" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>ADDRESS</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="must" 
                    SetFocusOnError="True"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>AGE</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="1 to 50" MaximumValue="50" 
                    MinimumValue="1" SetFocusOnError="True"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>GENDER</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    <asp:ListItem>OTHER</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td></td>
        </tr>
        
        <tr>
            <td colspan="3"><center>
                <asp:Button ID="Button1" runat="server" Text="save" />
                </center></td>
        </tr>
    </table>
    </form>
</body>
</html>
