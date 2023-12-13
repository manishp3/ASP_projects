<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="2" width="100%">
<tr>
    <td>Name</td>
    <td>
        <asp:TextBox ID="txtnm" runat="server">txtnm</asp:TextBox>
    </td>
    <td></td>
</tr>
<tr>
    <td>mail</td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server">txtmail</asp:TextBox>
    </td>
    <td></td>
</tr>
<tr>
    <td>address</td>
    <td>
        <asp:TextBox ID="TextBox4" runat="server">txtadd</asp:TextBox>
    </td>
    <td></td>
</tr>
<tr>
    <td>gender</td>
    <td>
        <asp:TextBox ID="TextBox5" runat="server">txtgen</asp:TextBox>
    </td>
    <td></td>
</tr>
<tr>
    <td>password</td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password">txtpwd</asp:TextBox>
    </td>
    <td></td>
</tr>
<tr>
    <td colspan="3">
        <asp:Button ID="btnsbmt" runat="server" Text="submit" />
        <asp:Button ID="btnupdt" runat="server" Text="update" />
        <asp:Button ID="btndlt" runat="server" Text="delete" />
        <asp:Button ID="btnsrch" runat="server" Text="search" />
        <asp:Button ID="btnclr" runat="server" Text="btnclear" />
    </td>
</tr>
<tr>
    <td colspan="3">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
<tr>
    <td colspan="3">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </td>
</tr>
</table>
</asp:Content>

