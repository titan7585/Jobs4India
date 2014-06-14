<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="jsForgotpassword.aspx.cs" Inherits="Job_Portal.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 409px;
            height: 39px;
        }
        .style8
        {
            width: 540px;
            height: 39px;
        }
        .style10
        {
            width: 467px;
            height: 39px;
        }
        .style11
        {
            height: 31px;
        }
        .style12
        {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        
        <tr>
            <td align="center" class="style11" colspan="3" 
                style="background-color: #C0C0C0; font-size: x-large">
                Forgot password.Don&#39;t be worry.</td>
            
        </tr>
        <tr>
            <td align="right" class="style10">
                Please enter valid email:</td>
            <td class="style8">
                <asp:TextBox ID="txtjsforgotemail" runat="server" Width="196px" Height="27px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorjsmail" 
                    runat="server" ControlToValidate="txtjsforgotemail" 
                    ErrorMessage="*Please enter valid email." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" 
                    ControlToValidate="txtjsforgotemail" 
                    ErrorMessage="*This place can not be blank."></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style8">
                <asp:ImageButton ID="ImageButtonsubmit" runat="server" Height="37px" 
                    ImageUrl="~/Images/submit.gif" onclick="ImageButtonsubmit_Click" 
                    Width="93px" />
            </td>
            <td class="style7">
                </td>
        </tr>
    </table>
</asp:Content>
