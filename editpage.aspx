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
    <section class="content-wrapper">
<div class="main-content">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:covinfodbConnectionString %>" 
            DeleteCommand="DELETE FROM [table2] WHERE [flat] = @original_flat AND (([rname] = @original_rname) OR ([rname] IS NULL AND @original_rname IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([vacname] = @original_vacname) OR ([vacname] IS NULL AND @original_vacname IS NULL)) AND (([dose1] = @original_dose1) OR ([dose1] IS NULL AND @original_dose1 IS NULL)) AND (([dose2] = @original_dose2) OR ([dose2] IS NULL AND @original_dose2 IS NULL)) AND (([doa] = @original_doa) OR ([doa] IS NULL AND @original_doa IS NULL))" 
            InsertCommand="INSERT INTO [table2] ([flat], [rname], [dob], [vacname], [dose1], [dose2], [doa]) VALUES (@flat, @rname, @dob, @vacname, @dose1, @dose2, @doa)" 
            SelectCommand="SELECT * FROM [table2]" UpdateCommand="UPDATE [table2] SET [rname] = @rname, [dob] = @dob, [vacname] = @vacname, [dose1] = @dose1, [dose2] = @dose2, [doa] = @doa WHERE [flat] = @original_flat AND (([rname] = @original_rname) OR ([rname] IS NULL AND @original_rname IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([vacname] = @original_vacname) OR ([vacname] IS NULL AND @original_vacname IS NULL)) AND (([dose1] = @original_dose1) OR ([dose1] IS NULL AND @original_dose1 IS NULL)) AND (([dose2] = @original_dose2) OR ([dose2] IS NULL AND @original_dose2 IS NULL)) AND (([doa] = @original_doa) OR ([doa] IS NULL AND @original_doa IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}"
            >
            
            <DeleteParameters>
                <asp:Parameter Name="original_flat" Type="Decimal" />
                <asp:Parameter Name="original_rname" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_vacname" Type="String" />
                <asp:Parameter Name="original_dose1" Type="String" />
                <asp:Parameter Name="original_dose2" Type="String" />
                <asp:Parameter Name="original_doa" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="flat" Type="Decimal" />
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
                <asp:Parameter Name="original_flat" Type="Decimal" />
                <asp:Parameter Name="original_rname" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_vacname" Type="String" />
                <asp:Parameter Name="original_dose1" Type="String" />
                <asp:Parameter Name="original_dose2" Type="String" />
                <asp:Parameter Name="original_doa" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="flat" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" EmptyDataText="No Records Matching!" ViewStateMode="Enabled" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Double" BorderWidth="5px" AllowSorting="True" AutoGenerateEditButton="True" Width="918px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="flat" HeaderText="Flat No." ReadOnly="True" SortExpression="flat" />
                <asp:BoundField DataField="rname" HeaderText="Name" SortExpression="rname" />
                <asp:BoundField DataField="dob" HeaderText="Date Of Birth" SortExpression="dob" />
                <asp:BoundField DataField="vacname" HeaderText="Vaccine Name" SortExpression="vacname" />
                <asp:BoundField DataField="dose1" HeaderText="Dose 1 Administered?" SortExpression="dose1" />
                <asp:BoundField DataField="dose2" HeaderText="Dose 2 Administered?" SortExpression="dose2" />
                <asp:BoundField DataField="doa" HeaderText="Date of Administered" SortExpression="doa" />
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
</div>
 </section>
</body>
</html>
