using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Functions func = new Functions();
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Check if the id is not found in the database ---> Add a new Record
        if (func.checkDragons(IdTb.Text) == false)
        {
            func.add_dragons(NameTb.Text, ColorTb.Text, FoodTb.Text, locationDDL.SelectedValue.ToString());
            Label6.Visible = true;

            GridView1.DataBind();
        }
        else
        {
            func.edit_dragons(Convert.ToInt32(IdTb.Text), NameTb.Text, FoodTb.Text,ColorTb.Text, locationDDL.SelectedValue.ToString());
            GridView1.DataBind();
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (func.checkDragons(IdTb.Text) == true)
        {
            func.delete_dragon(Convert.ToInt32(IdTb.Text));
        }
        
        else
        {
            
            Label8.Text = "There is no record found with id " + IdTb.Text;
            Label8.Visible = true;
        }
        GridView1.DataBind();

    }
}