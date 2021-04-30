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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="flat" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
    
</body>
</html>
