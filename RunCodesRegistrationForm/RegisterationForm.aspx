<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationForm.aspx.cs" Inherits="RunCodesRegistrationForm.RegisterationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*.auto-style1 {
            width: 100%;
        }*/
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" align="center" >
            <tr>
                <td class="auto-style1" colspan="2">
                    <strong>Registration Form</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" PlaceHolder="Enter your Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Address" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"  PlaceHolder="Address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                </td>
                <td id="radio1">
                    <asp:RadioButton ID="RadioButton1" GroupName="Gender"  runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td id="radio2">
                    <asp:RadioButton ID="RadioButton2" GroupName="Gender" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td id="radio3">
                    <asp:RadioButton ID="RadioButton3"  GroupName="Gender" runat="server" Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"  PlaceHolder="PhoneNumber"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" PlaceHolder="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="User Name"  ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" PlaceHolder="UserName"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Password"  ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" PlaceHolder="PassWord"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
