<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="logincomp.aspx.cs" Inherits="Job_Portal.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .logintable1
        {
            height: 60px;
        }
        .logintable3
        {
            width: 404px;
        }
        .logintable4
        {
            width: 245px;
        }
        .logintable5
        {
            width: 404px;
            height: 56px;
        }
        .logintable6
        {
            width: 245px;
            height: 56px;
        }
        .logintable7
        {
            height: 56px;
        }
        .logintable8
        {
            width: 404px;
            height: 57px;
        }
        .logintable9
        {
            width: 245px;
            height: 57px;
        }
        .logintable10
        {
            height: 57px;
        }
        .logintable11
        {
            width: 404px;
            height: 47px;
        }
        .logintable12
        {
            width: 245px;
            height: 47px;
        }
        .logintable13
        {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr>
            <td class="logintable1" colspan="3">
            <h1 style="text-align:center; font-family:Georgia; color:Blue;">
                
                Login
                </h1>
                </td>
        </tr>
        <tr>
            <td align="right" class="logintable5">
                Email:</td>
            <td class="logintable6">
                <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
            </td>
            <td class="logintable7">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtLoginEmail" ErrorMessage="Enter valid Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="logintable8">
                Password:</td>
            <td class="logintable9">
                <asp:TextBox ID="txtLoginPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="logintable10">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="logintable8">
            </td>
            <td class="logintable9">
                <asp:ImageButton ID="imgbtnLogin" runat="server" Height="45px" 
                    ImageUrl="~/Images/login.gif" onclick="imgbtnLogin_Click" Width="106px" />
            </td>
            <td class="logintable10">
            </td>
        </tr>
        <tr>
            <td align="right" class="logintable11">
            </td>
            <td class="logintable12">
                &nbsp;</td>
            <td class="logintable13">
            </td>
        </tr>
        <tr>
            <td align="right" class="logintable11">
                &nbsp;</td>
            <td class="logintable12">
                <asp:LinkButton ID="lnkbtnCreateAcc" runat="server" 
                    PostBackUrl="~/companyreg.aspx">Create New Account</asp:LinkButton>
            </td>
            <td class="logintable13">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="logintable3">
                &nbsp;</td>
            <td class="logintable4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
