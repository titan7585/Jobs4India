<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admindeletecompany.aspx.cs" Inherits="Job_Portal.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 494px;
    }
    .style4
    {
        width: 287px;
    }
        .style5
        {
            width: 494px;
            height: 18px;
        }
        .style6
        {
            width: 287px;
            height: 18px;
        }
        .style7
        {
            height: 18px;
        }
    .style8
    {
        width: 494px;
        height: 45px;
    }
    .style9
    {
        width: 287px;
        height: 45px;
    }
        .style10
        {
            width: 494px;
            height: 38px;
        }
        .style11
        {
            width: 287px;
            height: 38px;
        }
        .style12
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
    <tr>
        <td align="center" colspan="3" 
            
            style="font-family: georgia; font-size: x-large; font-weight: bold; color: #000080" 
            class="style1">
            Delete Company</td>
    </tr>
    <tr>
        <td align="right" class="style3" 
            style="font-weight: bold; font-family: georgia">
            Company id :</td>
        <td class="style4">
            <asp:TextBox ID="txtCmpmail" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td align="center">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
                ImageUrl="~/Images/search.gif" onclick="ImageButton1_Click" Width="113px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style3" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lblcmpnmae" runat="server" Text="Company Name :"></asp:Label>
        </td>
        <td class="style4">
            <asp:Label ID="lblcmpname" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style8" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lblCmpindustry" runat="server" Text="Industry :"></asp:Label>
        </td>
        <td class="style9">
            <asp:Label ID="lbltCmpindustry" runat="server"></asp:Label>
        </td>
        <td align="center" class="adminmaster3">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="41px" 
                ImageUrl="~/Images/delete.gif" onclick="ImageButton2_Click" Width="113px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style10" 
            style="font-weight: bold; font-family: georgia">
            &nbsp;<asp:Label ID="lblCmpdescription" runat="server" Text="Description :"></asp:Label>
        </td>
        <td class="style11">
            <asp:Label ID="lbltCmpdescription" runat="server"></asp:Label>
        </td>
        <td class="style12">
            </td>
    </tr>
    <tr>
        <td align="right" class="style5" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lblCmplogo" runat="server" Text="Company Logo :"></asp:Label>
        </td>
        <td class="style6">
            <asp:Image ID="Image1" runat="server" Height="29px" 
                ImageUrl="~/Images/stock-photo-business-men-hand-shake-in-white-background-66920671.jpg" />
        </td>
        <td class="style7">
            </td>
    </tr>
    <tr>
        <td align="right" class="style3">
            &nbsp;</td>
        <td class="style4" align="center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
