<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="jobsearchvisitor.aspx.cs" Inherits="Job_Portal.WebForm13" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        border-style: solid;
        border-width: 1px;
    }
    .style2
    {
        width: 96px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td align="center">
            <asp:Label ID="lblShow" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblTest" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style2">
            &nbsp;</td>
        <td align="center">
            <asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label>
        </td>
        <td align="center">
            <asp:Label ID="lblExp" runat="server" Text="Experience"></asp:Label>
        </td>
        <td align="center">
            <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
        </td>
        <td rowspan="2">
            <asp:ImageButton ID="imgbtnSearch" runat="server" Height="32px" 
                ImageUrl="~/Images/search.gif" Width="88px" onclick="imgbtnSearch_Click" />
        </td>
    </tr>
    <tr>
        <td align="center" class="style2">
            &nbsp;</td>
        <td align="center">
            <asp:DropDownList ID="drpdwnCategory" runat="server" 
                DataSourceID="SqlDataSource8" AppendDataBoundItems="True" 
                DataValueField="jobcategory">
                <asp:ListItem Selected="True">--Select--</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [jobcategory] FROM [jobposting]">
            </asp:SqlDataSource>
        </td>
        <td align="center">
            <asp:DropDownList ID="drpdwnExp" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="center">
            
            <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                TargetControlID="txtLocation" UseContextKey="True" ServiceMethod="GetName" 
                MinimumPrefixLength="1" >
            </asp:AutoCompleteExtender>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="5">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                DataSourceID="SqlDataSource7" AutoGenerateColumns="False" 
                BackColor="White" GridLines="Vertical" Height="200px" Width="800px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                AutoGenerateSelectButton="True" DataKeyNames="jobid" >
                <Columns>
                    <asp:BoundField DataField="jobid" HeaderText="jobid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="jobid" />
                    <asp:BoundField DataField="compname" HeaderText="compname" 
                        SortExpression="compname" />
                    <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" 
                        SortExpression="jobtitle" />
                    <asp:BoundField DataField="joblocation" HeaderText="joblocation" 
                        SortExpression="joblocation" />
                    <asp:BoundField DataField="jobdesc" HeaderText="jobdesc" 
                        SortExpression="jobdesc" />
                </Columns>
                <HeaderStyle BackColor="#33CCFF" Width="200px" />
                <RowStyle BackColor="White" BorderStyle="None" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Width="200px" />
                <SelectedRowStyle BackColor="#99CCFF" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT [jobid], [compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([joblocation] = @joblocation))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtLocation" Name="joblocation" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpdwnExp" Name="minexp" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([jobcategory] LIKE '%' + @jobcategory + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpdwnCategory" Name="jobcategory" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp) AND ([joblocation] = @joblocation))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpdwnExp" Name="minexp" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="txtLocation" Name="joblocation" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT [jobid], [compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([joblocation] = @joblocation) AND ([jobcategory] LIKE '%' + @jobcategory + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtLocation" Name="joblocation" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="drpdwnCategory" Name="jobcategory" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp) AND ([jobcategory] LIKE '%' + @jobcategory + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpdwnExp" Name="minexp" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="drpdwnCategory" Name="jobcategory" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\info.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT DISTINCT  [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp) AND ([joblocation] = @joblocation) AND ([jobcategory] LIKE '%' + @jobcategory + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpdwnExp" Name="minexp" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="txtLocation" Name="joblocation" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="drpdwnCategory" Name="jobcategory" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
