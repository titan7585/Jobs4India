<%@ Page Title="" Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="jobseekerprofilero.aspx.cs" Inherits="Job_Portal.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 38px;
        }
        .style3
        {
            width: 240px;
        }
        .style5
        {
            width: 482px;
            height: 25px;
        }
        .style6
        {
            width: 240px;
            height: 25px;
        }
        .style7
        {
            height: 25px;
        }
        .style8
        {
            width: 482px;
            height: 24px;
        }
        .style9
        {
            width: 240px;
            height: 24px;
        }
        .style10
        {
            height: 24px;
        }
        .style11
        {
            width: 482px;
            height: 31px;
        }
        .style12
        {
            width: 240px;
            height: 31px;
        }
        .style13
        {
            height: 31px;
        }
        .style14
        {
            width: 482px;
        }
        .style15
        {
            width: 482px;
            height: 34px;
        }
        .style16
        {
            width: 240px;
            height: 34px;
        }
        .style17
        {
            height: 34px;
        }
        .style18
        {
            width: 482px;
            height: 40px;
        }
        .style19
        {
            width: 240px;
            height: 40px;
        }
        .style20
        {
            height: 40px;
        }
        .style21
        {
            width: 482px;
            height: 27px;
        }
        .style22
        {
            width: 240px;
            height: 27px;
        }
        .style23
        {
            height: 27px;
        }
        .style30
        {
            width: 482px;
            height: 26px;
        }
        .style31
        {
            width: 240px;
            height: 26px;
        }
        .style32
        {
            height: 26px;
        }
        .style33
        {
            width: 482px;
            height: 65px;
        }
        .style34
        {
            width: 240px;
            height: 65px;
        }
        .style35
        {
            height: 65px;
        }
        .style36
        {
            width: 482px;
            height: 53px;
        }
        .style37
        {
            width: 240px;
            height: 53px;
        }
        .style38
        {
            height: 53px;
        }
        .style39
        {
            width: 482px;
            height: 22px;
        }
        .style40
        {
            width: 240px;
            height: 22px;
        }
        .style41
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr>
            <td align="center" class="style2" colspan="4" 
                style="background-color: #66CCFF; font-family: georgia; font-size: large; font-weight: bold; font-style: normal; color: #000000">
                Candidate Details</td>
        </tr>
        <tr>
            <td colspan="2" 
                style="font-family: georgia; font-size: medium; font-weight: bold; font-style: normal; color: #800000">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" 
                style="font-family: georgia; font-size: medium; font-weight: bold; font-style: normal; color: #800000">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" 
                
                style="font-family: georgia; font-size: medium; font-weight: bold; font-style: normal; color: #800000" 
                class="style20">
                &nbsp;&nbsp;
                Personal Details</td>
            <td class="style20">
                </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style39" align="right">
                <asp:Image ID="imgjsPhoto" runat="server" Height="100px" Width="90px" />
                </td>
            <td class="style40">
                </td>
            <td class="style41">
                &nbsp;</td>
            <td class="style41">
                </td>
        </tr>
        <tr>
            <td align="right" class="style5" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsFirst" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="lblNameSpace" runat="server" Text="   "></asp:Label>
                <asp:Label ID="lblSpace" runat="server" Text="    "></asp:Label>
                <asp:Label ID="lbljsLast" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td align="right" class="style8" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style9">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsDOB" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td align="right" class="style8" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Gender&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style9">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsGender" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="style10">
                <asp:Label ID="lblShow" runat="server"></asp:Label>
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td align="right" class="style5" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                City&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsCity" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td align="right" class="style5" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                State&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsState" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td align="right" class="style5" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Country&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsCountry" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td align="right" class="style5" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Mobile No.&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsMobile" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style14" align="right" style="font-weight: bold">
                Email&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsEmail" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18" 
                style="font-family: georgia; font-size: medium; font-weight: bold; font-style: normal; color: #800000">
                &nbsp; Employment Details&nbsp;</td>
            <td class="style19">
                </td>
            <td class="style20">
                </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Work Experience&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblExp" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="years"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style15" align="right" 
                
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000" 
                valign="top">
                Key Skills&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSkill" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSkill2" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSkill3" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSkill4" runat="server"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18" 
                style="font-family: georgia; font-size: medium; font-weight: bold; font-style: normal; color: #800000">
                &nbsp; Educational Details&nbsp;</td>
            <td class="style19">
                </td>
            <td class="style20">
                </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style14" align="center">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" align="right">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                10th Class Percentage&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style22">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTenper" runat="server"></asp:Label>
                </td>
            <td class="style23">
                &nbsp;</td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style5" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                12th Class Percentage&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTwelveper" runat="server"></asp:Label>
                </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style5" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;&nbsp; UG Course&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsUG" runat="server"></asp:Label>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                UG Percentage&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style31">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblUGper" runat="server"></asp:Label>
                </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style30" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                PG Course&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style31">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbljsPG" runat="server"></asp:Label>
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                PG Percentage&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style31">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblPGper" runat="server"></asp:Label>
                </td>
            <td class="style32">
                </td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style14" align="right">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" align="right">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" 
                style="font-family: georgia; font-size: medium; font-weight: bold; font-style: normal; color: #800000">
                &nbsp;&nbsp; Resume&nbsp;Details</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Resume&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbResume" runat="server" onclick="lbResume_Click">Resume</asp:LinkButton>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style36">
                </td>
            <td class="style37">
                &nbsp;</td>
            <td class="style38">
                &nbsp;</td>
            <td class="style38">
                </td>
        </tr>
        <tr>
            <td class="style33">
                </td>
            <td class="style34">
                </td>
            <td class="style35">
                </td>
            <td class="style35">
                </td>
        </tr>
    </table>
</asp:Content>
