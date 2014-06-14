<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="passrecovery.aspx.cs" Inherits="Job_Portal.WebForm27" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style6" 
                style="font-family: georgia; font-size: x-large; color: #800000">
                </td>
            <td align="left" class="style7" 
                style="font-family: georgia; font-size: xx-large; color: #000000">
                Recover Password</td>
            <td style="font-family: georgia; color: #800000; font-size: x-large" 
                class="style8">
                </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Id :</td>
            <td class="style5">
                <asp:Label ID="lbljobseekeremail" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Your security question is :</td>
            <td class="style5">
                <asp:Label ID="lbljsseekersecurity" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Give your answer :</td>
            <td class="style5">
                <asp:TextBox ID="txtyourans" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorjsnew" runat="server" 
                    ControlToValidate="txtyourans" ErrorMessage="Enter your answer." 
                    ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                Your Password is :</td>
            <td class="style5">
                <asp:TextBox ID="txtyourpass" runat="server" 
                    Width="233px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4" style="font-weight: bold; font-size: larger">
                &nbsp;</td>
            <td align="left" class="style5">
                <asp:ImageButton ID="Image1" runat="server" Height="41px" 
                    ImageUrl="~/Images/recover.gif" Width="98px" onclick="Image1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
