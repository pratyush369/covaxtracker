using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    static TextBox tb = new TextBox();
    static TextBox tb2 = new TextBox();
    protected void Page_Load(object sender, EventArgs e)
    {
    if (!IsPostBack)
        {
            tb = (TextBox)PreviousPage.FindControl("Etext");
            tb2 = (TextBox)PreviousPage.FindControl("Edob");
            SqlDataSource1.FilterExpression = string.Format("flat = '{0}' and dob = '{1}'", tb.Text,tb2.Text);
        }
        else
        {
            SqlDataSource1.FilterExpression = string.Format("flat = '{0}' and dob = '{1}'", tb.Text, tb2.Text);
        }
     
    }
}