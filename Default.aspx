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
        <h1>COVID-19 Vaccination Progress Tracker</h1>
    </div>
        
    </header>
    <section class="featured">
        <div class="content-wrapper">
        <h1>Registration for Members</h1>
    </div>
    </section>
    <section class="body">    
    <form id="form1" runat="server" action="response1.aspx" method="post" >
        <div style="text-align:center;">

            <label style ="padding-top:10px;">Name</label>
            <asp:TextBox runat="server" type="text" id="Rname"/><br/><br/>
            <asp:RequiredFieldValidator ControlToValidate="Rname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ID="req1" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
            <label>Flat no.</label>
            <asp:TextBox runat="server" type="text" id="Fno"/><br/><br/>
            <label>Date Of Birth</label>
            <asp:TextBox ID="Dob" runat="server" type="date" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>'></asp:TextBox>  
            <br />
            <br/>
            <label></label>
            <label>Vaccine Name</label><br/>
            <asp:DropDownList ID="Vactype" runat="server">
            <asp:ListItem value="value" selected="False">  
              COVISHIELD
            </asp:ListItem>
            <asp:ListItem value="value" selected="False">  
              COVAXIN
            </asp:ListItem>
            </asp:DropDownList>
            <br/><br/>
            <label >Dose One  </label>
            <asp:CheckBox ID="Dose1" runat="server" /><br /><br />
            <label>Dose Two  </label>
            <asp:CheckBox ID="Dose2" runat="server" /><br />
            <br />
            <label>Date of Administration</label><br/>
            <asp:TextBox ID="Doa" runat="server" type="date" Text='<%# Bind("DateofAdministration", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
            <br />
            <br/>
            &nbsp;
            <input type='button' id='resetButton' value='Reset' onclick='form1.reset();return false;'/>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/response1.aspx" Text="Register" CausesValidation="False"/>
            
            
        </div>
    </form>
    </section>
    <asp:label ID="Label1" runat="server"></asp:label>
</body>
</html>
