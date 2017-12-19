using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewBooks : System.Web.UI.Page
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
        //use gridview to retreive data from database
        if (true)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.ConnectionStrings["Homelibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("SELECT Name, Author, ISBN FROM books", conn);

        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            booksGridView.DataSource = reader;
            booksGridView.DataBind();
            reader.Close();
        }
        finally
        {
            conn.Close();
        }

    }


    protected void BooksGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //###prototype
        
        if (e.CommandName == "MoreDetailsPlease")
        {
            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            Literal li = (Literal)row.FindControl("extraDetailsLiteral");
            li.Text = "ISBN: <strong>" + e.CommandArgument + "</strong><br />";
        }
        
    }
}