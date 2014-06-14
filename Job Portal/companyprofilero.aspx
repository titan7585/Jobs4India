<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="companyprofilero.aspx.cs" Inherits="Job_Portal.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 50px;
        }
        .style3
        {
            width: 481px;
        }
        .style4
        {
            width: 481px;
            height: 23px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 481px;
            height: 27px;
        }
        .style7
        {
            height: 27px;
        }
         .style9
         {
             height: 23px;
             width: 232px;
         }
         .style10
         {
             height: 27px;
             width: 232px;
         }
         .style11
         {
             width: 232px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" id = "companyproftable">
        <tr>
            <td align="center" class="style2" colspan="3" 
                style="background-color: #00FFFF; font-family: georgia; font-size: x-large; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Company Details</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <asp:Image ID="imgLogo" runat="server" Height="90px" Width="80px" />
            </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                Company Name:</td>
            <td class="style9">
                <asp:Label ID="lblCompname" runat="server"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style6" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                Industry:</td>
            <td class="style10">
                <asp:Label ID="lblIndustry" runat="server"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                City:</td>
            <td class="style11">
                <asp:Label ID="lblCity" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                State:</td>
            <td class="style11">
                <asp:Label ID="lblState" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                Country:</td>
            <td class="style11">
                <asp:Label ID="lblCountry" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                style="font-family: georgia; font-size: medium; font-weight: bold" 
                valign="top">
                Description:</td>
            <td class="style11">
                <asp:Label ID="lblCompdesc" runat="server" Height="200px" Width="250px"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                Contact Person:</td>
            <td class="style11">
                <asp:Label ID="lblCompCP" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                style="font-family: georgia; font-size: medium; font-weight: bold">
                Company Email:</td>
            <td class="style11">
                <asp:Label ID="lblCompemail" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
