<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminjobpost.aspx.cs" Inherits="Job_Portal.WebForm31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 462px;
            height: 37px;
        }
        .style4
        {
        height: 37px;
        width: 165px;
    }
        .style7
        {
            width: 462px;
        }
    .style10
    {
        width: 165px;
    }
    .style11
    {
        width: 696px;
    }
    .style12
    {
        width: 696px;
        height: 37px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable" id="jobposttable">
        <tr>
            <td class="style2" align="center" colspan="3" 
                style="background-color: #C0C0C0; color: #800000; font-size: x-large;">
                Job Details</td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #FFFFE8;">
                &nbsp;</td>
            <td class="style10" style="background-color: #FFFFE8">
                &nbsp;</td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" align="right" style="background-color: #FFFFE8;">
                Company Email:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaComemail" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorAdmail" 
                    runat="server" ControlToValidate="txtaComemail" 
                    ErrorMessage="Enter valid email." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" align="right" style="background-color: #FFFFE8;">
                CompanyCompany Name:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaComname" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Job Title:            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaJobtitle" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Job Category:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:DropDownList ID="drpdwnaJobCat" runat="server" Height="20px" Width="169px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Automotive</asp:ListItem>
                    <asp:ListItem>Banking</asp:ListItem>
                    <asp:ListItem>Chemicals</asp:ListItem>
                    <asp:ListItem>Consumer Goods</asp:ListItem>
                    <asp:ListItem>Education</asp:ListItem>
                    <asp:ListItem>Entertainment</asp:ListItem>
                    <asp:ListItem>ITES/BPO/KPO</asp:ListItem>
                    <asp:ListItem>IT - Hardware</asp:ListItem>
                    <asp:ListItem>IT - Software</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Skill:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaSkill" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Min Experience:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaMinexp" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Qualification:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaQualification" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Description:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaDesc" runat="server" Width="171px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Location:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaLoc" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="background-color: #FFFFE8;">
                Min Salary:</td>
            <td class="style10" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaMinsal" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style11" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" style="background-color: #FFFFE8;">
                Max Salary:</td>
            <td class="style4" style="background-color: #FFFFE8">
                <asp:TextBox ID="txtaMaxsal" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style12" style="background-color: #FFFFE8">
                </td>
        </tr>
        <tr>
            <td align="right" class="style3" style="background-color: #FFFFE8">
                &nbsp;</td>
            <td class="style4" style="background-color: #FFFFE8">
                <asp:ImageButton ID="imgbtnadjobpost" runat="server" Height="31px" 
                    ImageUrl="~/Images/post.gif" onclick="imgbtnadjobpost_Click" Width="95px" />
            </td>
            <td class="style12" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" style="background-color: #FFFFE8">
                &nbsp;</td>
            <td class="style4" style="background-color: #FFFFE8">
                <asp:Label ID="lblaShow" runat="server"></asp:Label>
            </td>
            <td class="style12" style="background-color: #FFFFE8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
