<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="2" width="100%">
    <tr>
        <td colspan="3">REGISTRATION</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>
            <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtnm" Display="Dynamic" ErrorMessage="Name Must" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address:</td>
        <td>
            <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtadd" Display="Dynamic" ErrorMessage="Address Must" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>City:</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="City Must" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td>
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtphone" Display="Dynamic" 
                ErrorMessage="phone must be 10 digit" SetFocusOnError="True" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Button ID="btnsbmt" runat="server" Text="SUBMIT" />
            <asp:Button ID="btnupdt" runat="server" Text="UPDATE" />
            <asp:Button ID="btndlt" runat="server" Text="DELETE" />
            <asp:Button ID="BTNSRCH" runat="server" Text="SEARCH" />
            <asp:Button ID="Button1" runat="server" Text="CLEAR" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </td>
    </tr> 
    <tr>
    <td colspan="3">
        <asp:Label ID="lblmsg" runat="server" Text="No Message"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

