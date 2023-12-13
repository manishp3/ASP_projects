<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admission.aspx.vb" Inherits="Admission" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="2" width="80%" id="reg">
    <tr>
        <td colspan="3">Heading</td>
    </tr>
    <tr>
        <td>FName:</td>
        <td>
            <asp:TextBox ID="txtfn" runat="server" BackColor="White" 
                BorderColor="#66FFFF" BorderStyle="Double" ForeColor="#CC6600"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtfn" Display="Dynamic" ErrorMessage="Enter FN" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>LName</td>
        <td>
            <asp:TextBox ID="txtln" runat="server" SkinID="txtfn"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtln" Display="Dynamic" ErrorMessage="Enter Ln" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Surname</td>
        <td>
            <asp:TextBox ID="txtsn" runat="server" SkinID="txtfn"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtsn" Display="Dynamic" ErrorMessage="Enter Surname" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Year</td>
        <td>
            <asp:TextBox ID="txtyr" runat="server" SkinID="txtfn"></asp:TextBox>
        </td>
        <td>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="txtyr" Display="Dynamic" ErrorMessage="Enter b/w 10-20" 
                MaximumValue="2020" MinimumValue="2010" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>Gender</td>
        <td>
            <asp:RadioButtonList ID="ddl1" runat="server">
                <asp:ListItem>-Select-</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Button ID="btninsrt" runat="server" Text="Insert" 
                onclick="btninsrt_Click" />
            <asp:Button ID="btnupdt" runat="server" Text="Update" onclick="btnupdt_Click" />
            <asp:Button ID="btndlt" runat="server" Text="Delete" />
            <asp:Button ID="btndsply" runat="server" Text="Search" style="height: 35px" />
            <asp:Button ID="Button1" runat="server" Text="Clrar" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="dgv1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

