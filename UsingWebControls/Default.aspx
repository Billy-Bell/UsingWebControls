<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UsingWebControls.Default" %>

<%@ Register src="UserControls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 199px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="FirstNameTextBox" defaultbutton="SubmitButton">
        <div>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <uc1:Header ID="Header1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">First Name:</td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Please enter your FIrst Name."></asp:RequiredFieldValidator>
                    *</td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please enter your Surname."></asp:RequiredFieldValidator>
                    *</td>
            </tr>
            <tr>
                <td class="auto-style2">Birthday</td>
                <td>
                    <asp:TextBox ID="BirthdayTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="BirthdayTextBox" ErrorMessage="Please enter your Date of Birth."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="BirthdayTextBox" ErrorMessage="Please enter a valid date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">City</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="CityDropDown" runat="server">
                        <asp:ListItem Value="">Select one</asp:ListItem>
                        <asp:ListItem>London</asp:ListItem>
                        <asp:ListItem>Birmingham</asp:ListItem>
                        <asp:ListItem>Liverpool</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CityDropDown" ErrorMessage="Please enter your City."></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="EmailAddressBox" ErrorMessage="Please enter your Email Address."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style4">
                    <asp:TextBox ID="EmailAddressBox" runat="server"></asp:TextBox>
                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddressBox" ErrorMessage="Please enter a valid Email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <br />
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="OutputLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
