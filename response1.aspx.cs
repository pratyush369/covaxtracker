using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox tb = new TextBox(); // this is a object for texbox  
        tb = (TextBox)(PreviousPage.FindControl("Rname"));
        namedis.Text = tb.Text;
        tb = (TextBox)(PreviousPage.FindControl("Fno"));
        flatdis.Text = tb.Text;
        DropDownList ddl = new DropDownList();
        ddl = (DropDownList)PreviousPage.FindControl("Vactype");
        ListItem li = new ListItem();
        li = ddl.SelectedItem;
        vacdis.Text = li.Text.Trim();
    }
}