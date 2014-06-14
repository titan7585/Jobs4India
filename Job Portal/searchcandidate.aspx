<%@ Page Title="" Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="searchcandidate.aspx.cs" Inherits="Job_Portal.WebForm25" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr>
            <td>
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
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:Label ID="lblSkill" runat="server" Text="Skill"></asp:Label>
            </td>
            <td align="center">
                <asp:Label ID="lblExp" runat="server" Text="Experience"></asp:Label>
            </td>
            <td align="center">
                <asp:Label ID="lbllocation" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                <asp:TextBox ID="txtSkill" runat="server"></asp:TextBox>
            </td>
            <td align="center">
                <asp:DropDownList ID="drpdwnExp" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
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
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="200" ServiceMethod="GetLoc" MinimumPrefixLength="1" TargetControlID="txtLocation">
                </asp:AutoCompleteExtender>
            </td>
            <td align="center">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="43px" 
                    ImageUrl="~/Images/search.gif" Width="92px" onclick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="emailid" DataSourceID="SqlDataSource7" 
                    AutoGenerateSelectButton="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                    Width="800px">
                    <Columns>
                        <asp:BoundField DataField="firstname" HeaderText="firstname" 
                            SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" 
                            SortExpression="lastname" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" ReadOnly="True" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
                        <asp:BoundField DataField="skill2" HeaderText="skill2" 
                            SortExpression="skill2" />
                        <asp:BoundField DataField="skill3" HeaderText="skill3" 
                            SortExpression="skill3" />
                        <asp:BoundField DataField="skill4" HeaderText="skill4" 
                            SortExpression="skill4" />
                        <asp:BoundField DataField="experience" HeaderText="experience" 
                            SortExpression="experience" />
                    </Columns>
                    <HeaderStyle BackColor="Black" ForeColor="White" Height="40px" />
                    <RowStyle Height="30px" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE (([experience] &gt;= @experience) AND ([city] = @city))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpdwnExp" Name="experience" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="txtLocation" Name="city" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE ( ([city] = @city) AND (([skill] = @skill) OR ([skill2] = @skill2) OR ([skill3] = @skill3) OR ([skill4] = @skill4)))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtLocation" Name="city" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill2" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill3" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill4" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE (([experience] &gt;= @experience) AND  (([skill] = @skill) OR ([skill2] = @skill2) OR ([skill3] = @skill3) OR ([skill4] = @skill4)))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpdwnExp" Name="experience" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill2" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill3" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill4" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE ( ([city] = @city))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtLocation" Name="city" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE (([skill] = @skill) OR ([skill2] = @skill2) OR ([skill3] = @skill3) OR ([skill4] = @skill4))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSkill" Name="skill" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill2" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill3" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill4" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE (([experience] &gt;= @experience))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpdwnExp" Name="experience" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [firstname], [lastname], [emailid], [city], [skill], [skill2], [skill3], [skill4], [experience] FROM [jobseeker] WHERE (([experience] &gt;= @experience) AND ([city] = @city) AND (([skill] = @skill) OR ([skill2] = @skill2) OR ([skill3] = @skill3) OR ([skill4] = @skill4)))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpdwnExp" Name="experience" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="txtLocation" Name="city" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill2" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill3" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSkill" Name="skill4" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
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
