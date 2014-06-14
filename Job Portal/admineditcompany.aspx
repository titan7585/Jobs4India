<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admineditcompany.aspx.cs" Inherits="Job_Portal.WebForm18" %>
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
         height: 34px;
     }
     .style11
     {
         width: 287px;
         height: 34px;
     }
     .style12
     {
         height: 34px;
     }
     .style13
     {
         width: 494px;
         height: 28px;
     }
     .style14
     {
         width: 287px;
         height: 28px;
     }
     .style15
     {
         height: 28px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;
 <table class="style2">
    <tr>
        <td align="center" colspan="3" 
            
            style="font-family: georgia; font-size: x-large; font-weight: bold; color: #000080" 
            class="style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit Company</td>
    </tr>
    <tr>
        <td align="right" class="style3" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lbleCmpmail" runat="server" Text="Company Mail :"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtCmpmmail" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td align="center">
            <asp:ImageButton ID="ImageButtonserch" runat="server" Height="33px" 
                ImageUrl="~/Images/search.gif" onclick="ImageButtonserch_Click" Width="117px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style3" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lbleCmpname" runat="server" Text="Company Name :"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtadCmpname" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style8" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lbleCmpindustry" runat="server" Text="Industry :"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtCmpindustry" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td align="center" class="adminmaster3">
            <asp:ImageButton ID="ImageButtonupdate" runat="server" Height="34px" 
                ImageUrl="~/Images/update.gif" onclick="ImageButtonupdate_Click" 
                Width="115px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style10" 
            style="font-weight: bold; font-family: georgia">
            &nbsp;<asp:Label ID="lbleCmpdescription" runat="server" Text="Description :"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="txtCmpdescription" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="style12">
            </td>
    </tr>
    <tr>
        <td align="right" class="style13" 
            style="font-weight: bold; font-family: georgia">
            <asp:Label ID="lbleCmpcntact" runat="server" Text="Contact Person :"></asp:Label>
        </td>
        <td class="style14">
            <asp:TextBox ID="txtCmpcnperson" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="style15">
            </td>
    </tr>
    <tr>
        <td align="right" class="style5" 
            style="font-weight: bold; font-family: georgia">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
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
