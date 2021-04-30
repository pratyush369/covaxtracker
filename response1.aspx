
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="response1.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="defaultstyle.css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <div class="content-wrapper"><h3>New User Succesfully Registered!</h3><br /></div>
        
        
        </header>
<div class="content-wrapper">
        <label>Name:&nbsp; </label> 
        <asp:Label id="namedis" runat="server">
        </asp:Label>
        <label>
        <br />
        Flat No.:&nbsp; </label> 
        <asp:Label id="flatdis" runat="server">
        </asp:Label>
        <label>
        <br />
        Vaccine Name:&nbsp; </label>
        <asp:Label id="vacdis" runat="server">
        </asp:Label>
        <label>
        <br />
        Date Of Birth: </label>  
        &nbsp;<asp:Label id="dobdis" runat="server">
        </asp:Label>
        <label>
        <br />
        Dose 1: </label>
        &nbsp;<asp:Label id="d1dis" runat="server">
        </asp:Label>
        <label>
        <br />
        Dose 2: </label>
        &nbsp;<asp:Label id="d2dis" runat="server">
        </asp:Label>
        <label>
        <br />
        Date of Administration:</label>&nbsp;  
        <asp:Label id="doadis" runat="server">
        </asp:Label>
        <br />
        <br />
    </div>
    <footer></footer>
    </form>
</body>
</html>
