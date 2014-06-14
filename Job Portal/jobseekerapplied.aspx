<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="jobseekerapplied.aspx.cs" Inherits="Job_Portal.WebForm35" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        height: 46px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
    <tr>
        <td align="center" class="style1" colspan="3" 
            style="background-color: #0099FF; color: #FFFFFF; font-size: x-large; font-weight: bold;">
            Applied Jobs</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <asp:GridView ID="GridView1" runat="server" Width="900px">
                <HeaderStyle BackColor="Black" ForeColor="White" Height="40px" />
                <RowStyle BackColor="White" Height="30px" HorizontalAlign="Center" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
