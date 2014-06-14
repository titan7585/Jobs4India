<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="jobdetailsvisitor.aspx.cs" Inherits="Job_Portal.WebForm36" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 412px;
        }
        .style2
        {
            width: 281px;
        }
        .style3
        {
            width: 412px;
            height: 37px;
        }
        .style4
        {
            width: 281px;
            height: 37px;
        }
        .style5
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style1">
                <asp:Image ID="imgCompLogo" runat="server" Height="100px" Width="100px" />
            </td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblJobtitle" runat="server" Font-Bold="True" 
                    Font-Size="XX-Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style1" style="color: #808080">
                By</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCompname" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;</td>
            <td style="color: #808080">
                Posted On :
                <asp:Label ID="lblPostdate" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1" style="color: #808080">
                Min Exp :
            </td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMinexp" runat="server"></asp:Label>
                &nbsp;years</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080" valign="top">
                Job Description:</td>
            <td class="style2">
                &nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDesc" runat="server" Height="200px" Width="250px"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                Salary:</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSalary" runat="server"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                Industry:</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblIndustry" runat="server"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                Skills:</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSkills" runat="server"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                Education:</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblEducation" runat="server"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080" valign="top">
                Notes:</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblNotes" runat="server" Height="140px" Width="250px"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                &nbsp;</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hlCompsite" runat="server" Visible="False">[hlCompsite]</asp:HyperLink>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right" style="color: #808080">
                </td>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/companyprofilero.aspx">Company Profile</asp:HyperLink>
                &nbsp;</td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                &nbsp;</td>
            <td align="left" class="style2">
                <asp:Label ID="lblAskLogin" runat="server" Text="Please Login to Apply"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" align="right" style="color: #808080">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
