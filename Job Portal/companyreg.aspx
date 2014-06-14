<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="companyreg.aspx.cs" Inherits="Job_Portal.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .registertable1
        {
            width: 299px;
        }
        .registertable2
        {
            width: 299px;
            height: 22px;
        }
        .registertable3
        {
            height: 22px;
        }
        .registertable4
        {
            width: 263px;
        }
        .registertable5
        {
            width: 263px;
            height: 22px;
        }
        .registertable6
        {
            width: 94px;
            height: 22px;
        }
        .registertable7
        {
            width: 114px;
            height: 22px;
        }
        .registertable8
        {
            width: 299px;
            height: 21px;
        }
        .registertable9
        {
            width: 263px;
            height: 21px;
        }
        .registertable10
        {
            height: 21px;
        }
        .registertable11
        {
            height: 13px;
        }
        .registertable12
        {
            width: 470px;
        }
        .registertable13
        {
            width: 470px;
            height: 22px;
        }
        .registertable14
        {
            width: 470px;
            height: 21px;
        }
        .registertable15
        {
            width: 470px;
            height: 40px;
        }
        .registertable16
        {
            height: 40px;
        }
        .registertable17
        {
            width: 94px;
            height: 40px;
        }
        .registertable18
        {
            height: 40px;
        }
        .registertable20
        {
            width: 263px;
            height: 40px;
        }
        .style2
        {
            height: 29px;
        }
        .style3
        {
            width: 467px;
        }
        .style4
        {
            width: 467px;
            height: 22px;
        }
        .style6
        {
            width: 467px;
            height: 40px;
        }
        .style7
        {
            width: 467px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr style="height:40px">
            <td align="center" colspan="3" 
                
                
                style="text-align: center; font-family: Georgia; color: #800000; font-style: normal; font-size: 30px; font-weight: bold;">
                Register</td>
        </tr>
        <tr>
            <td align="center" colspan="3" 
                
                style="text-align: center; font-family: Georgia; color: #800000; font-style: italic; font-size: 30px; font-weight: bold;" 
                class="registertable11">
                </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                E-mail&nbsp;&nbsp;&nbsp;&nbsp; 
                : </td>
            <td class="registertable4">
                <asp:TextBox ID="txtCompEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="*Enter valid e-mail address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtCompEmail"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style4" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Password&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable5">
                <asp:TextBox ID="txtCompPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="registertable3">
                &nbsp;</td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Confirm Password&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td align="left" class="registertable4" 
                
                
                style="font-family: Georgia; color: #000000; font-style: italic; font-weight: bold; font-size: 14px;">
                <asp:TextBox ID="txtCompRepass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtCompPass" ControlToValidate="txtCompRepass" 
                    ErrorMessage="*Wrong password.Please enter valid password."></asp:CompareValidator>
            </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Company Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable4">
                <asp:TextBox ID="txtCompName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtCompName" 
                    ErrorMessage="*This place can not be blank." EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Industry&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable4">
                <asp:DropDownList ID="drpdwnIndustry" runat="server" Height="16px" 
                    Width="120px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                City&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable4">
                <asp:TextBox ID="txtCompCity" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                State&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable4">
                <asp:TextBox ID="txtCompState" runat="server"></asp:TextBox>
&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style6" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Country&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable20">
                <asp:TextBox ID="txtCompCountry" runat="server"></asp:TextBox>
            </td>
            <td class="registertable18">
                </td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Description&nbsp;&nbsp;&nbsp;&nbsp; : </td>
            <td class="style2">
                <asp:TextBox ID="txtCompDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Contact Person&nbsp;&nbsp;&nbsp; :</td>
            <td class="style2">
                <asp:TextBox ID="txtCompCP" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Website&nbsp;&nbsp;&nbsp; :</td>
            <td class="style2">
                <asp:TextBox ID="txtCompwebsite" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;</td>
            <td class="style2">
                <asp:ImageButton ID="imgbtnCompreg" runat="server" Height="48px" 
                    ImageUrl="~/Images/register.gif" Width="115px" 
                    onclick="imgbtnCompreg_Click" />
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
