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
    <form id="form2" runat="server">
        <div style="text-align:center;">
       <label>
           To Update Your Information Verify your Information
       </label>
        <br/><br/>
        <label>Flat No.</label>&nbsp&nbsp<input type="number" />
        <label>Date Of Birth</label>&nbsp&nbsp<input type="date" /><br /> <br />
    </div>
    </form>
    </section>
</body>
</html>
