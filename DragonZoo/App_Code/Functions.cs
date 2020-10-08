using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Functions
/// </summary>
public class Functions
{
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\LTUC.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True;MultipleActiveResultSets=True");
    public Functions()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void add_locations(string locationName)
    {
        if (cnn.State == ConnectionState.Closed)
            cnn.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO LOCATIONS(location) VALUES(@location)", cnn);
        cmd.Parameters.AddWithValue("@location", locationName);

        cmd.ExecuteNonQuery();

    }
    public void add_dragons(string name, string color, string food, string location)
    {
        if (cnn.State == ConnectionState.Closed)
            cnn.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO Dragons(Name,Color,Food,Location) VALUES(@name,@color,@food,@location)", cnn);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@color", color);
        cmd.Parameters.AddWithValue("@food", food);
        cmd.Parameters.AddWithValue("@location", location);

        cmd.ExecuteNonQuery();


    }
    public void delete_dragon(int id)
    {
        if (cnn.State == ConnectionState.Closed)
            cnn.Open();


        SqlCommand cmd = new SqlCommand("DELETE FROM DRAGONS WHERE ID=@id", cnn);
        cmd.Parameters.AddWithValue("@id", id);

        cmd.ExecuteNonQuery();

    }
    public bool checkDragons(string id)
    {
        if (cnn.State == ConnectionState.Closed)
            cnn.Open();

        //Check if there is a dragon with id=@id
        SqlCommand cmdchk = new SqlCommand("SELECT * FROM DRAGONS WHERE ID=@id", cnn);
        cmdchk.Parameters.AddWithValue("@id", Convert.ToInt32(id));

        SqlDataReader rdr = cmdchk.ExecuteReader();
        if (rdr.Read())
        {

            return true;
        }
        else
        {
            return false;
        }
    }
    public void edit_dragons(int id, string name, string food, string color,string location)
    {
        if (cnn.State == ConnectionState.Closed)
            cnn.Open();

        SqlCommand cmd = new SqlCommand("UPDATE DRAGONS SET Name=@name,Color=@color,Food=@food,Location=@location WHERE id=@id", cnn);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(id));
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@color", color);
        cmd.Parameters.AddWithValue("@food", food);
        cmd.Parameters.AddWithValue("@location", location);

        cmd.ExecuteNonQuery();
    }
}

