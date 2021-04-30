<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="defaultstyle.css" />
    <title>Registration</title>
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
    </div>
        <h1>COVID-19 Vaccination Progress Tracker</h1>
    </header>
    <div class="featured">
        <div class="content-wrapper">
        <h1>Registration for Members</h1>
    </div>
    </div>
    <section class="body">    
    <form id="form1" runat="server">
        <div style="text-align:center">
            <label style ="padding-top:10px;">Name: </label>
            <asp:TextBox runat="server" type="text" id="Rname"/><br/><br/>
            <asp:RequiredFieldValidator ControlToValidate="Rname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ID="req1" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
            <label>Flat no.: </label>
            <input type="text" id="model"/><br />
            <br />
            <label>Date Of Birth:</label>
            <asp:TextBox ID="Dob" runat="server" type="date" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>'></asp:TextBox>  
            <br />
            <br />
            <br/><br/>
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
            <input id="Dose2" type="checkbox"  /><br />
            <br />
            <label>Date of Administration</label><br/>
            <asp:TextBox ID="Doa" runat="server" type="date" Text='<%# Bind("DateofAdministration", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
            <br />
            <br/>
         
            &nbsp;<asp:Button ID="Button2" runat="server" OnClick="B_click" Text="Register" CausesValidation="False"/>
            
            
        </div>
    </form>
    </section>
    <asp:label ID="Label1" runat="server"></asp:label>
</body>
</html>
