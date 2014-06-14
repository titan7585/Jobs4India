<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Jobseekerprofile.aspx.cs" Inherits="Job_Portal.WebForm8" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
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
            width: 536px;
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
            width: 536px;
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
            width: 536px;
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
            width: 536px;
        }
        .style15
        {
            width: 536px;
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
            width: 536px;
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
            width: 536px;
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
        .style27
        {
            width: 536px;
            height: 28px;
        }
        .style28
        {
            width: 240px;
            height: 28px;
        }
        .style29
        {
            height: 28px;
        }
        .style30
        {
            width: 536px;
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
            width: 536px;
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
            width: 536px;
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
            width: 536px;
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
                Your Details</td>
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
            <td class="style39">
                </td>
            <td class="style40">
                </td>
            <td class="style41">
                <asp:Image ID="imgjsPhoto" runat="server" AlternateText="Please upload a photo" 
                    Height="100px" Width="90px" />
            </td>
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
                <asp:FileUpload ID="FileUpload2" runat="server" Height="20px" Width="209px" />
                </td>
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
                <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                    Text="Upload" />
                </td>
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
                <asp:TextBox ID="txtjsExperience" runat="server" Width="170px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="years"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style15" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                Key Skills&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtjsSkill" runat="server"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtjsSkill2" runat="server"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtjsSkill3" runat="server"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtjsSkill4" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtjsTenper" runat="server" Width="170px"></asp:TextBox>
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
                <asp:TextBox ID="txtjsTwlvwper" runat="server" Width="170px"></asp:TextBox>
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
            <td class="style27" align="right" 
                
                style="font-family: georgia; font-size: small; font-weight: lighter; font-style: italic; color: #990000">
                Change/Update&nbsp;UG Course&nbsp;&nbsp;&nbsp; :</td>
            <td class="style28">
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="drpdwnUgcourse" runat="server" Height="21px" 
                    Width="170px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>B.A.</asp:ListItem>
                    <asp:ListItem>B.Arch</asp:ListItem>
                    <asp:ListItem>B.C.A</asp:ListItem>
                    <asp:ListItem>B.B.A.</asp:ListItem>
                    <asp:ListItem>B.Com</asp:ListItem>
                    <asp:ListItem>B.Ed</asp:ListItem>
                    <asp:ListItem>B.Pharma</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                    <asp:ListItem>B.Tech/B.E.</asp:ListItem>
                    <asp:ListItem>MBBS</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style29">
                &nbsp;</td>
            <td class="style29">
                </td>
        </tr>
        <tr>
            <td class="style30" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                UG Percentage&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style31">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtjsUgper" runat="server" Width="170px"></asp:TextBox>
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
            <td class="style21" align="right" 
                
                style="font-family: georgia; font-size: small; font-weight: lighter; font-style: italic; color: #990000">
                Change/Update PG Course&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style22">
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="drpdwnPgcourse" runat="server" Height="21px" 
                    Width="170px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>CA</asp:ListItem>
                    <asp:ListItem>CS</asp:ListItem>
                    <asp:ListItem>Integrated PG</asp:ListItem>
                    <asp:ListItem>M.A.</asp:ListItem>
                    <asp:ListItem>M.Arch</asp:ListItem>
                    <asp:ListItem>M.Com</asp:ListItem>
                    <asp:ListItem>M.Ed</asp:ListItem>
                    <asp:ListItem>M.Pharma</asp:ListItem>
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>M.Sc</asp:ListItem>
                    <asp:ListItem>M.Tech</asp:ListItem>
                    <asp:ListItem>MBA/PGDM</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>PG Diploma</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style23">
                </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style30" align="right" 
                style="font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000">
                PG Percentage&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style31">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtjsPgper" runat="server" Width="170px"></asp:TextBox>
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
                Upload your resume&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="263px" Height="20px" />
            </td>
            <td>
                <asp:Button ID="btnResumeUpload" runat="server" onclick="btnResumeUpload_Click" 
                    Text="Upload" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style36">
                </td>
            <td class="style37">
                <asp:ImageButton ID="imgbtnjsUpdate" runat="server" Height="48px" 
                    ImageUrl="~/Images/update.gif" onclick="imgbtnjsUpdate_Click" Width="117px" />
                </td>
            <td class="style38">
                <asp:Label ID="lblExttest" runat="server"></asp:Label>
                </td>
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
