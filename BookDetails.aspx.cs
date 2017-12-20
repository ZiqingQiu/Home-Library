using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookDetails : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            BindDetails();
        }
    }

    private void BindDetails()
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.ConnectionStrings["Homelibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("SELECT * FROM books WHERE ISBN=@ISBN", conn);

        //@ISBN
        comm.Parameters.Add("ISBN", System.Data.SqlDbType.NVarChar, 13);
        comm.Parameters["ISBN"].Value = Session["CurrrentViewBook"] as string;

        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            bookDetailsView.DataSource = reader;
            //###
            //bookDetailsView.DataKeyNames = new string[] { "ISBN" };
            bookDetailsView.DataBind();
            reader.Close();
        }
        finally
        {
            conn.Close();
        }
    }
}