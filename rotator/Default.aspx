﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml">
        </asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
