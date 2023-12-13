<%@ Page Language="VB" MasterPageFile="~/MainPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table border="2" width="100%">
    <tr>
        <td colspan="3"></td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>Model</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>Number_Place</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Button ID="btninssrt" runat="server" Text="SUBMIT" />
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

