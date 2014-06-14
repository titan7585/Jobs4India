<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="homesearch.aspx.cs" Inherits="Job_Portal.WebForm38" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="masterpagetable">
        <tr>
            <td>
                <asp:Label ID="lblTest" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateSelectButton="True" DataKeyNames="jobid" 
                    DataSourceID="SqlDataSource6" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="800px">
                    <Columns>
                        <asp:BoundField DataField="jobid" HeaderText="Job No." InsertVisible="False" 
                            ReadOnly="True" SortExpression="jobid" />
                        <asp:BoundField DataField="compname" HeaderText="Company" 
                            SortExpression="compname" />
                        <asp:BoundField DataField="jobtitle" HeaderText="Job Title" 
                            SortExpression="jobtitle" />
                        <asp:BoundField DataField="joblocation" HeaderText="Location" 
                            SortExpression="joblocation" />
                        <asp:BoundField DataField="jobdesc" HeaderText="Summary" 
                            SortExpression="jobdesc" />
                    </Columns>
                    <HeaderStyle BackColor="#0099FF" ForeColor="White" Height="40px" />
                    <RowStyle BackColor="White" Height="30px" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp))">
                    <SelectParameters>
                        <asp:SessionParameter Name="minexp" SessionField="exp" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([jobcategory] LIKE '%' + @jobcategory + '%'))">
                    <SelectParameters>
                        <asp:SessionParameter Name="jobcategory" SessionField="cat" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp) AND ([joblocation] = @joblocation))">
                    <SelectParameters>
                        <asp:SessionParameter Name="minexp" SessionField="exp" />
                        <asp:SessionParameter Name="joblocation" SessionField="loc" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [jobid], [compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([joblocation] = @joblocation) AND ([jobcategory] LIKE '%' + @jobcategory + '%'))">
                    <SelectParameters>
                        <asp:SessionParameter Name="joblocation" SessionField="loc" />
                        <asp:SessionParameter Name="jobcategory" SessionField="cat" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp) AND ([jobcategory] LIKE '%' + @jobcategory + '%'))">
                    <SelectParameters>
                        <asp:SessionParameter Name="minexp" SessionField="exp" />
                        <asp:SessionParameter Name="jobcategory" SessionField="cat" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [jobid], [compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([joblocation] = @joblocation))">
                    <SelectParameters>
                        <asp:SessionParameter Name="joblocation" SessionField="loc" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT  [jobid],[compname], [jobtitle], [joblocation], [jobdesc] FROM [jobposting] WHERE (([minexp] &lt;= @minexp) AND ([joblocation] = @joblocation) AND ([jobcategory] LIKE '%' + @jobcategory + '%'))">
                    <SelectParameters>
                        <asp:SessionParameter Name="minexp" SessionField="exp" />
                        <asp:SessionParameter Name="joblocation" SessionField="loc" />
                        <asp:SessionParameter Name="jobcategory" SessionField="cat" />
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
        </tr>
    </table>
</asp:Content>
