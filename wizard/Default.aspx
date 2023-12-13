<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" BackColor="#EFF3FB" 
        BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
        Height="369px" Width="571px">
        <SideBarTemplate>
            <asp:DataList ID="SideBarList" runat="server">
                <ItemTemplate>
                    <asp:LinkButton ID="SideBarButton" runat="server" ForeColor="White"></asp:LinkButton>
                </ItemTemplate>
                <SelectedItemStyle Font-Bold="True" />
            </asp:DataList>
        </SideBarTemplate>
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="create user">
                UserId:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="password">
                questuoin:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="answer">
                ciuntry:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                GEnder:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>fetmale</asp:ListItem>
                    <asp:ListItem>other</asp:ListItem>
                </asp:RadioButtonList>
            </asp:WizardStep>
        </WizardSteps>
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
            ForeColor="White" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#990000" Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#990000" Text="Finish" />
        </FinishNavigationTemplate>
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#990000" Text="Previous" />
            <asp:Button ID="StepNextButton" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#990000" Text="Next" />
        </StepNavigationTemplate>
    </asp:Wizard>
    </form>
</body>
</html>
