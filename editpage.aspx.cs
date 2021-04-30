using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    static TextBox tb = new TextBox();
    protected void Page_Load(object sender, EventArgs e)
    {
    if (!IsPostBack)
        {
            tb = (TextBox)PreviousPage.FindControl("Etext");
            SqlDataSource1.FilterExpression = string.Format("flat = '{0}'", tb.Text);
        }
        else
        {
            SqlDataSource1.FilterExpression = string.Format("flat = '{0}'", tb.Text);
        }
     
    }
}