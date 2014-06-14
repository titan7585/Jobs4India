<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="jsdeleteprofile.aspx.cs" Inherits="Job_Portal.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
        .style2
        {
            height: 59px;
        }
        .style4
        {
            height: 51px;
        }
        .style5
        {
            height: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr>
            <td align="center" class="style2" 
                style="background-color: #0099FF; color: #FFFFFF; font-size: xx-large; font-weight: bold">
            </td>
            <td align="center" class="style2" 
                style="background-color: #0099FF; color: #FFFFFF; font-size: xx-large; font-weight: bold">
                Delete Profile</td>
            <td align="center" class="style2" 
                style="background-color: #0099FF; color: #FFFFFF; font-size: xx-large; font-weight: bold">
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td align="center" class="style1">
                If you really want to delete your profile,<br />
                then please enter your Email ID below :</td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td align="center" class="style5">
                <asp:TextBox ID="txtEmailDelete" runat="server" Height="22px" Width="205px"></asp:TextBox>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td align="center" class="style1">
                <asp:ImageButton ID="imgbtnDelete" runat="server" 
                    onclick="imgbtnDelete_Click" Height="48px" ImageUrl="~/Images/delete.gif" 
                    Width="118px" />
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4" align="center">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
            <td class="style4">
            </td>
        </tr>
    </table>
</asp:Content>
