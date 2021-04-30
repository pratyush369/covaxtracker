using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox tb = new TextBox(); // this is a object for texbox  
        tb = (TextBox)(PreviousPage.FindControl("Rname"));
        String name = tb.Text; //NAME
        tb = (TextBox)(PreviousPage.FindControl("Fno"));
        String fno = tb.Text;//FLAT
        tb = (TextBox)(PreviousPage.FindControl("Dob"));
        String dob = tb.Text;//DOB
        DropDownList ddl = new DropDownList();
        ddl = (DropDownList)PreviousPage.FindControl("Vactype");
        ListItem li = new ListItem();
        li = ddl.SelectedItem;
        String vactype = li.Text.Trim(); //VACTYPE
        CheckBox cb = new CheckBox();
        cb = (CheckBox) PreviousPage.FindControl("Dose1");
        String d1 = cb.Checked.ToString();  ///DOSE1
        cb = (CheckBox)PreviousPage.FindControl("Dose2");
        String d2 = cb.Checked.ToString();   ///DOSE2
        tb = (TextBox)PreviousPage.FindControl("Doa");
        String doa = tb.Text;

        //Data Localized

        //Now Printing

        namedis.Text = name;
        flatdis.Text = fno;
        vacdis.Text = vactype;
        dobdis.Text = dob;
        doadis.Text = doa;
        d1dis.Text = d1;
        d2dis.Text = d2;

        //SQL
        String connstr = @"Data Source = localhost; Initial Catalog = covinfodb; User ID = demo; Password = demo";
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        String sql = "Insert Into table1 Values(@fno,@name,@dob,@vactype,@d1,@d2,@doa);";
        SqlCommand sqlCommand = new SqlCommand("Insert Into table1 Values(@fno,@name,@dob,@vactype,@d1,@d2,@doa);", conn);
        sqlCommand.Parameters.AddWithValue("fno", fno);
        sqlCommand.Parameters.AddWithValue("name", name);
        sqlCommand.Parameters.AddWithValue("dob", dob);
        sqlCommand.Parameters.AddWithValue("vactype", vactype);
        sqlCommand.Parameters.AddWithValue("d1", d1);
        sqlCommand.Parameters.AddWithValue("d2", d2);
        sqlCommand.Parameters.AddWithValue("doa", doa);
        sqlCommand.ExecuteNonQuery();
        conn.Close();
    }
}