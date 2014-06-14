<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminchangepass.aspx.cs" Inherits="Job_Portal.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 348px;
        }
        .style5
        {
            width: 277px;
        }
        .style6
        {
            width: 348px;
            height: 62px;
        }
        .style7
        {
            width: 277px;
            height: 62px;
        }
        .style8
        {
            height: 62px;
        }
    .style9
    {
        width: 382px;
        height: 62px;
    }
    .style10
    {
        width: 382px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style6" 
                style="font-family: georgia; font-size: x-large; color: #800000">
                </td>
            <td align="left" class="style9" 
                style="font-family: georgia; font-size: xx-large; color: #000000">
                Change Password</td>
            <td style="font-family: georgia; color: #800000; font-size: x-large" 
                class="style8">
                </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Id :</td>
            <td class="style10">
                <asp:TextBox ID="txtId" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtId" ErrorMessage="Enter Valid E-mail Id" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Old Password :</td>
            <td class="style10">
                <asp:TextBox ID="txtOldpass" runat="server" TextMode="Password" Width="233px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtOldpass" ErrorMessage="Enter Your Old Password" 
                    ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                New Password :</td>
            <td class="style10">
                <asp:TextBox ID="txtNewpass" runat="server" TextMode="Password" Width="233px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNewpass" ErrorMessage="Enter your New Password" 
                    ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Confirm Password :</td>
            <td class="style10">
                <asp:TextBox ID="txtConfirmpass" runat="server" TextMode="Password" 
                    Width="233px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtNewpass" ControlToValidate="txtConfirmpass" 
                    ErrorMessage="Password didn't matched" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                &nbsp;</td>
            <td align="left" class="style10">
                <asp:ImageButton ID="Image1" runat="server" Height="41px" 
                    ImageUrl="~/Images/submit.gif" Width="98px" onclick="Image1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
