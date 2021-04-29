<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="defaultstyle.css">
    <title>Registration</title>
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
        <h1>Registeration...!</h1>
    </div>
    </div>
    <section class="body">    
    <form id="form1" runat="server">
        <div style="text-align:center">
            <label style ="padding-top:10px;">Name: </label>
            <input type="text" id="name"/><br/><br/>
            <label>Flat no.: </label>
            <input type="text" id="model"/><br/><br/>
            <label></label>
            <label>Vaccine Name: </label><br/>
            <select id ="vactype">
                <option>
                    COVISHIELD
                </option>
                <option>
                    COWAXIN
                </option>
                <option>
                    Other
                </option>
            </select><br/><br/>
            <label>Dose One  </label>
            <input id="Dose1" type="checkbox"  /><br /><br />
            <label>Dose Two  </label>
            <input id="Dose2" type="checkbox"  />
        </div>
    </form>
    </section>
</body>
</html>
