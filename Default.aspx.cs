using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "Connecting!!!!";
        }
        
    }
    protected void B_click(object sender, EventArgs e)
    {
        
        String Constr = @"Data Source = localhost; Initial Catalog = testdb1; User ID = demo; Password = demo";
        SqlConnection conn = new SqlConnection(Constr);
        conn.Open();
        String strtemp = Rname.Text;
        Label1.Text = strtemp;
        conn.Close();
    }

    
}