using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchBooks : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        //add session based theme
        if (Session["CurrrentTheme"] != null)
        {
            this.Theme = Session["CurrrentTheme"] as string;
        }
        else
        {
            this.Theme = "Light";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //private void BindGrid()
    //{
    //    SqlConnection conn;
    //    SqlCommand comm;
    //    SqlDataReader reader;

    //    string connectionString = ConfigurationManager.ConnectionStrings["Homelibrary"].ConnectionString;
    //    conn = new SqlConnection(connectionString);
    //    string commandString;

    //    //replace below SQL statement to a much clean one
    //    commandString = "SELECT Title, Author, ISBN, Genre, Friend FROM books " +
    //        "WHERE (Genre=@Genre OR @Genre='All') AND " +
    //        "(Friend=@Friend OR @Friend='All')";
    //    comm = new SqlCommand(commandString, conn);
    //    comm.Parameters.Add("Genre", System.Data.SqlDbType.NVarChar, 10);
    //    comm.Parameters["Genre"].Value = genreDpdList.SelectedValue;
    //    comm.Parameters.Add("Friend", System.Data.SqlDbType.NVarChar, 20);
    //    comm.Parameters["Friend"].Value = friendDpdList.SelectedValue;

    //    try
    //    {
    //        conn.Open();
    //        reader = comm.ExecuteReader();
    //        resultGrid.DataSource = reader;
    //        resultGrid.DataBind();
    //        reader.Close();
    //    }
    //    finally
    //    {
    //        conn.Close();
    //    }
    //}

    protected void searchBtn_Click(object sender, EventArgs e)
    {
        //12.21 optimize this part, replace by sqldatasource solution
        //BindGrid();
        resultGrid.DataBind();
    }
}