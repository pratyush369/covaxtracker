<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stats.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="defaultstyle.css" />
</head>
<body>
    <header>
        <div class="float-right">
            <h2><a href="home.aspx">Home</a>
            <a href="Default.aspx">New Member</a>
            <a href="stats.aspx">Current Status</a>
            </h2>       
            </div>
    <div class="float-left">
        <h1>COVID-19 Vaccination Progress Tracker</h1>
    </div>
        
    </header>
    <section class="featured">
        <div class="content-wrapper">
        <h1>Current Status of Members</h1>
    </div>
    </section>
    <section class="body">
        <form runat="server">
        <asp:GridView ID="statgrid" runat="server" AutoGenerateColumns="false" >

            <Columns>
                
                <asp:BoundField DataField="flat" HeaderText="Flat Number" ItemStyle-Width="150" />
                <asp:BoundField DataField="rname" HeaderText="Name of Recepient" ItemStyle-Width="150" />
                <asp:BoundField DataField="vacname" HeaderText="Vaccine Type" ItemStyle-Width="150" />
                <asp:BoundField DataField="dose1" HeaderText="Dose 1 Administered?" ItemStyle-Width="150" />
                <asp:BoundField DataField="dose2" HeaderText="Dose 2 Administered?" ItemStyle-Width="150" />
                <asp:BoundField DataField="doa" HeaderText="Date of Administration " ItemStyle-Width="150" />
                
            </Columns>
        </asp:GridView>
        </form>

    </section>

</body>
</html>
