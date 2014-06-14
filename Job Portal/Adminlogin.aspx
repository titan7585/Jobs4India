<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Job_Portal.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 17%;
        }
        .style12
        {
            width: 24%;
        }
        .style19
        {
            width: 17%;
            height: 21px;
        }
        .style20
        {
            width: 24%;
            height: 21px;
        }
        .style25
        {
            width: 17%;
            height: 32px;
        }
        .style26
        {
            width: 24%;
            height: 32px;
        }
        .style28
        {
            width: 17%;
            height: 65px;
        }
        .style29
        {
            width: 24%;
            height: 65px;
        }
        .style30
        {
            width: 21%;
            height: 65px;
        }
        .style31
        {
            width: 21%;
            height: 32px;
        }
        .style32
        {
            width: 21%;
            height: 21px;
        }
        .style33
        {
            width: 21%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    <tr>
        <td align="right" class="style30">
            </td>
        <td class="style28" 
            style="font-size: 30px; font-family: georgia; font-weight: bold">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Login</td>
        <td class="style29">
            </td>
    </tr>
    <tr>
        <td align="right" class="style31" style="font-weight: bold">
            Log In:</td>
        <td class="style25" align="center">
            <asp:TextBox ID="txtAdminlogin" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:RegularExpressionValidator ID="RegularExpressionValidatoradminlogin" 
                runat="server" ControlToValidate="txtAdminlogin" 
                ErrorMessage="Enter valid e-mail" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr>
        <td align="right" class="style32" style="font-weight: bold">
            Password:</td>
        <td class="style19" align="center">
            <asp:TextBox ID="txtAdminpass" runat="server" Width="170px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style20">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style33">
            &nbsp;</td>
        <td class="style11" align="center">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" 
                ImageUrl="~/Images/login.gif" onclick="ImageButton1_Click" />
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style33">
            &nbsp;</td>
        <td class="style11" align="center">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
