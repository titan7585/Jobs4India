<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admindeletejobs.aspx.cs" Inherits="Job_Portal.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            background-color: #FFFFE8;
        }
        .style9
        {
            width: 537px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style8">
        <tr>
            <td align="right" class="style9" style="font-weight: bold">
                Enter Job Id:</td>
            <td>
                <asp:TextBox ID="TextBoxadjobid" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" 
                    ImageUrl="~/Images/delete.gif" onclick="ImageButton1_Click" Width="91px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
