<%@ Page Title="" Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="postjob.aspx.cs" Inherits="Job_Portal.WebForm10" %>
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
        }
        .style7
        {
            width: 462px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable" id="jobposttable">
        <tr>
            <td class="style2" align="center" colspan="2" 
                style="font-family: Arial, Helvetica, sans-serif; color: #800000; font-weight: bold; font-size: large">
                Job Details</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Job Title:</td>
            <td>
                <asp:TextBox ID="txtJobtitle" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Job Category:</td>
            <td>
                <asp:DropDownList ID="drpdwnJobCat" runat="server" Height="20px" Width="169px">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Skill:</td>
            <td>
                <asp:TextBox ID="txtSkill" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Min Experience:</td>
            <td>
                <asp:TextBox ID="txtMinexp" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Qualification:</td>
            <td>
                <asp:TextBox ID="txtQualification" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Summary:</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Location:</td>
            <td>
                <asp:TextBox ID="txtLoc" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Min Salary:</td>
            <td>
                <asp:TextBox ID="txtMinsal" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Max Salary:</td>
            <td class="style4">
                <asp:TextBox ID="txtMaxsal" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Details:</td>
            <td class="style4">
                <asp:TextBox ID="txtDetails" runat="server" Height="20px" TextMode="MultiLine" 
                    Width="167px"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Notes:</td>
            <td class="style4">
                <asp:TextBox ID="txtNotes" runat="server" Height="16px" TextMode="MultiLine" 
                    Width="163px"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;</td>
            <td class="style4">
                <asp:ImageButton ID="imgbtnJobpost" runat="server" Height="35px" 
                    ImageUrl="~/Images/post.gif" Width="80px" onclick="imgbtnJobpost_Click" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblShow" runat="server"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
