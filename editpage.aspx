<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editpage.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="defaultstyle.css" />
</head>
<body>
    <header>
        <br />
        <div class="float-right">
            <h2><a href="home.aspx">Home</a>
            <a href="Default.aspx">New Member</a>
            <a href="stats.aspx">Current Status</a>
            </h2>       
            </div>
    <div class="float-left">
        <h1>COVID-19 Vaccination Progress Tracker</h1>
    </div>
        <div class="content-wrapper"><h3>Search Result(s)</h3><br /></div>
        
        </header>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:covinfodbConnectionString %>" 
            DeleteCommand="DELETE FROM [table1] WHERE [flat] = @flat" 
            InsertCommand="INSERT INTO [table1] ([flat], [rname], [dob], [vacname], [dose1], [dose2], [doa]) VALUES (@flat, @rname, @dob, @vacname, @dose1, @dose2, @doa)" 
            SelectCommand="SELECT * FROM [table1]" UpdateCommand="UPDATE [table1] SET [rname] = @rname, [dob] = @dob, [vacname] = @vacname, [dose1] = @dose1, [dose2] = @dose2, [doa] = @doa WHERE [flat] = @flat"
            >
            
            <DeleteParameters>
                <asp:Parameter Name="flat" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="flat" Type="String" />
                <asp:Parameter Name="rname" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="vacname" Type="String" />
                <asp:Parameter Name="dose1" Type="String" />
                <asp:Parameter Name="dose2" Type="String" />
                <asp:Parameter Name="doa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="rname" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="vacname" Type="String" />
                <asp:Parameter Name="dose1" Type="String" />
                <asp:Parameter Name="dose2" Type="String" />
                <asp:Parameter Name="doa" Type="String" />
                <asp:Parameter Name="flat" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="flat" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" EmptyDataText="No Records Matching!" ViewStateMode="Enabled" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="flat" HeaderText="Flat Number" ReadOnly="True" SortExpression="flat" />
                <asp:BoundField DataField="rname" HeaderText="Name" SortExpression="rname" />
                <asp:BoundField DataField="dob" HeaderText="Date Of Birth" SortExpression="dob" />
                <asp:BoundField DataField="vacname" HeaderText="Vaccination Type" SortExpression="vacname" />
                <asp:BoundField DataField="dose1" HeaderText="Is Dose one administered?" SortExpression="dose1" />
                <asp:BoundField DataField="dose2" HeaderText="Is Dose two administered?" SortExpression="dose2" />
                <asp:BoundField DataField="doa" HeaderText="Date Of Administration" SortExpression="doa" />
            </Columns>
            <EditRowStyle BorderStyle="Solid" CssClass="GridViewEditRow" HorizontalAlign="Center" VerticalAlign="Top" Wrap="True" Width="100px" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </form>
    
</body>
</html>
