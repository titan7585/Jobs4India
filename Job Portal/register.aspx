<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Job_Portal.WebForm3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
        height: 40px;
    }
    .style3
    {
        width: 477px;
    }
    .style4
    {
        width: 477px;
        height: 22px;
    }
    .style5
    {
        width: 477px;
        height: 5px;
    }
    .style6
    {
        width: 477px;
        height: 40px;
    }
    .style7
    {
        width: 477px;
        height: 106px;
    }
    .style8
    {
        width: 477px;
        height: 56px;
    }
    .style9
    {
        height: 56px;
    }
    .style10
    {
        width: 477px;
        height: 108px;
    }
    .style11
    {
            height: 108px;
        }
        .style12
        {
            width: 263px;
            height: 5px;
        }
        .style13
        {
            height: 5px;
        }
        .style15
        {
            width: 263px;
            height: 50px;
        }
        .style16
        {
            width: 477px;
            height: 50px;
        }
        .style17
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable" cellpadding=0 cellspacing=0>
        <tr>
            <td align="center" class="style2" colspan="3" 
                
                style="background-color: #66CCFF; font-family: georgia; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                height="40">
                Create you Profile now.Free!</td>
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
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="*Enter valid e-mail address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style4" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Password&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable5">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="registertable3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtPass" 
                    ErrorMessage="*Password should be 8-15 characters long, contain atleast 1 digit and 1 alphabet" 
                    ValidationExpression="^.*(?=.{8,15})(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Confirm Password&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td align="left" class="registertable4" 
                
                
                style="font-family: Georgia; color: #000000; font-style: italic; font-weight: bold; font-size: 14px;">
                <asp:TextBox ID="txtRepass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPass" ControlToValidate="txtRepass" 
                    ErrorMessage="*Wrong password.Please enter valid password."></asp:CompareValidator>
            </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                First Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable4">
                <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFirst" ErrorMessage="*This place can not be blank." 
                    EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style16" 
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Last Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style15">
                <asp:TextBox ID="txtLast" runat="server" Height="20px"></asp:TextBox>
            </td>
            <td class="style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtLast" ErrorMessage="*This place can not be blank." 
                    EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style5" 
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Date of birth&nbsp;&nbsp;&nbsp;&nbsp; :
            </td>
            <td class="style12">
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                    TargetControlID="txtDOB" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
                <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDOB" EnableClientScript="False" 
                    ErrorMessage="*This place cannot be blank"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr style="height:40px">
            <td align="right" class="style3" 
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Gender&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable4">
                <asp:DropDownList ID="ddlGender" runat="server" Height="20px" Width="122px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlGender" EnableClientScript="False" 
                    ErrorMessage="*This place cannot be blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style6" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                City&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable20">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td class="registertable18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtCity" EnableClientScript="False" 
                    ErrorMessage="*This place cannot be blank"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style6" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                State&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable20">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            <td class="registertable18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtState" EnableClientScript="False" 
                    ErrorMessage="*This place cannot be blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style6" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;Country&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="registertable20">
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            </td>
            <td class="registertable18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtCountry" EnableClientScript="False" 
                    ErrorMessage="*This place cannot be blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style8" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                Mobile No&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style9">
                <asp:TextBox ID="txtMobile" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtMobile" EnableClientScript="False" 
                    ErrorMessage="*This place cannot be blank"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtMobile" ErrorMessage="*Please enter a proper mobile number" 
                    ValidationExpression="^[7-9][0-9]{9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style8" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;&nbsp;&nbsp; Security Question&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style9">
                <asp:DropDownList ID="drpdwnSecurity" runat="server" Height="21px" 
                    Width="233px">
                    <asp:ListItem>What is your first car?</asp:ListItem>
                    <asp:ListItem>What is your first mobile number?</asp:ListItem>
                    <asp:ListItem>What is your first teacher&#39;s name?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style8" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                &nbsp;Answer&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="style9">
                <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                
                
                
                style="font-family: georgia; font-size: 14px; font-weight: bold; font-style: normal; color: #000000">
                </td>
            <td class="style11">
                <asp:ImageButton ID="imgbtnRegister" runat="server" Height="45px" 
                    ImageUrl="~/Images/register.gif" onclick="imgbtnRegister_Click" Width="112px" />
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td align="right" class="style7" 
                
                
                
                
                
                
                
                style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #808080;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td class="style2" 
                style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #808080">
                <asp:Label ID="lblShow" runat="server"></asp:Label>
            </td>
            <td class="style2" 
                style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #808080">
                </td>
        </tr>
    </table>
</asp:Content>
