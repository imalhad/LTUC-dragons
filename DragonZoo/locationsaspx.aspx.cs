using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class locationsaspx : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\LTUC.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Functions func = new Functions();
    protected void Button1_Click(object sender, EventArgs e)
    {
        func.add_locations(TextBox1.Text);
        if (cnn.State == ConnectionState.Closed)
            cnn.Open();

        SqlCommand cmd = new SqlCommand("SELECT location from Locations", cnn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();


        
    }
}