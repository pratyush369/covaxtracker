using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String connstr = @"Data Source = localhost; Initial Catalog = covinfodb; User ID = demo; Password = demo";
        SqlConnection conn = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("select * from table2;", conn);
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        statgrid.DataSource = ds;
        statgrid.DataBind();
    }
}