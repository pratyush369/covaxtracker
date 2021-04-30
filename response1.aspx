
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="response1.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="defaultstyle.css" />
</head>
<body>
    <header></header>
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
    </div>
    <footer></footer>
</body>
</html>
