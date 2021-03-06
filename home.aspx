<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="defaultstyle.css" />
</head>
    <body>
<header>
    <div class="float-left">
        <h1>COVID-19 Vaccination Progress Tracker</h1>
    </div>
        <div class="float-right">
            <h2><a href="home.aspx">Home</a>
            <a href="Default.aspx">New Member</a>
            <a href="stats.aspx">Current Status</a>
            </h2>       
            </div>
    </header>
    <div class="featured">
        <div class="content-wrapper">
        <h1>Welcome To COVID-19 Vaccine Tracker</h1>
    </div>
    </div>
    <section class="body">    
    <form id="form2" runat="server" action="editpage.aspx">
        <div style="text-align:center;">
       <label>
            <br />
           To update or search your information<br />
            <br />Please verify your identity<br />
       </label>
        <br/><br/>
        <label>Flat No.<br />
            </label>&nbsp&nbsp<asp:TextBox ID="Etext" runat="server"></asp:TextBox>
        <label>Date Of Birth<br />
            </label>&nbsp&nbsp<asp:TextBox ID="Edob" runat="server" type="date" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>'></asp:TextBox>  
            <br />
            <br />
            <asp:Button ID="searchbutton" runat="server" Text="Submit" PostBackUrl="editpage.aspx" OnClick="searchbutton_Click" />
            <br />
            <br /> <br />
    </div>
    </form>
    </section>
</body>
</html>
