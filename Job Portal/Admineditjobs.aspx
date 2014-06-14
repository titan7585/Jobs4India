<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admineditjobs.aspx.cs" Inherits="Job_Portal.WebForm30" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
        width: 427px;
    }
        .style4
        {
            height: 23px;
            width: 297px;
        }
    .style8
    {
        height: 23px;
        width: 427px;
    }
    .style9
    {
        width: 427px;
        height: 33px;
    }
    .style10
    {
        height: 33px;
    }
    .style11
    {
        width: 427px;
        height: 37px;
    }
    .style12
    {
        height: 37px;
    }
        .style13
        {
            width: 427px;
            height: 27px;
        }
        .style14
        {
            height: 27px;
        }
        .style15
        {
            height: 26px;
            width: 427px;
        }
        .style16
        {
            height: 26px;
        }
        .style17
        {
            width: 427px;
            height: 30px;
        }
        .style18
        {
            height: 30px;
        }
        .style19
        {
            width: 427px;
            height: 36px;
        }
        .style20
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
        <tr>
            <td align="center" colspan="2" 
                style="font-family: Georgia; font-size: large; color: #800000; background-color: #3399FF">
                &nbsp;Edit Jobs</td>
        </tr>
        <tr>
            <td align="center" class="style9" style="background-color: #FFFFE6">
                Enter job id</td>
            <td style="background-color: #FFFFE6" class="style10">
                <asp:TextBox ID="TextBox10" runat="server" Width="214px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td align="center" class="style9" style="background-color: #FFFFE6">
                <asp:Label ID="lblcompamail" runat="server" Text="Company Mail:"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style10">
                <asp:TextBox ID="TextBox11" runat="server" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style9" style="background-color: #FFFFE6">
                <asp:Label ID="lblcompaname" runat="server" Text="Company Name:"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style10">
                <asp:TextBox ID="TextBox12" runat="server" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style11" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdJobtitle" runat="server" Text="Job Title"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="214px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="imgbtnedtsrh" runat="server" Height="30px" 
                    ImageUrl="~/Images/search.gif" onclick="imgbtnedtsrh_Click" Width="108px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" style="background-color: #FFFFE6">
            <asp:Label ID="lbladdJobcategory" runat="server" Text="Job Category"></asp:Label>
            </td>
            <td class="adminmaster2" style="background-color: #FFFFE6">
                <asp:TextBox ID="TextBox2" runat="server" Width="214px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="imgbtnedit" runat="server" Height="31px" 
                    ImageUrl="~/Images/update.gif" onclick="imgbtnedit_Click" Width="104px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdSkill" runat="server" Text="Skill"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6">
                <asp:TextBox ID="TextBox3" runat="server" Width="214px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style3" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdMiniexperience" runat="server" Text="Mini Experience"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6">
                <asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style13" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdQualification" runat="server" Text="Qualification"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style14">
                <asp:TextBox ID="TextBox5" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style15" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdDescription" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="style16" style="background-color: #FFFFE6">
                <asp:TextBox ID="TextBox6" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style17" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdLocation" runat="server" Text="Location"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style18">
                <asp:TextBox ID="TextBox7" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style9" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdMinsalary" runat="server" Text="Min Salary"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style10">
                <asp:TextBox ID="TextBox8" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style19" style="background-color: #FFFFE6">
                <asp:Label ID="lbladdMaxsalary" runat="server" Text="Max Salary"></asp:Label>
            </td>
            <td style="background-color: #FFFFE6" class="style20">
                <asp:TextBox ID="TextBox9" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="background-color: #FFFFE6">
                &nbsp;</td>
            <td align="center" style="background-color: #FFFFE6">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="background-color: #FFFFE6">
                &nbsp;</td>
            <td align="center" style="background-color: #FFFFE6">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
