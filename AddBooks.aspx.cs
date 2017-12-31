using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBooks : System.Web.UI.Page
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

    //custom validator
    protected void CheckLandFriendName(object sender, ServerValidateEventArgs e)
    {
        //is landed and no friend name
        if (rdoLanded.Checked && String.IsNullOrEmpty(e.Value))
        {
            e.IsValid = false;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //add book
            AddBook();
            btnSave.Text = "Valid";
        }
        else
        {
            btnSave.Text = "Invalid";
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ClearUserInputControls();
    }

    /// <summary>
    ///This method is called when cancel button is fired, will clear the user input 
    /// </summary>
    protected void ClearUserInputControls()
    {
        Response.Redirect("AddBooks.aspx");
    }

    /// <summary>
    /// This method will add book object into books collection
    /// </summary>
    protected void AddBook()
    {
        //write database to insert new book
        SqlConnection conn;
        SqlCommand comm;

        string connectionString = ConfigurationManager.ConnectionStrings["Homelibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("INSERT INTO books VALUES(@ISBN, @Title, @Author, @Genre, @Pages, @Landed, @Friend, @Comments)", conn);
        //@ISBN
        comm.Parameters.Add("ISBN", System.Data.SqlDbType.NVarChar,13);
        comm.Parameters["ISBN"].Value = bi1.ISBN;
        //@Title
        comm.Parameters.Add("Title", System.Data.SqlDbType.NVarChar, 20);
        comm.Parameters["Title"].Value = bi1.BookName;
        //@Author
        comm.Parameters.Add("Author", System.Data.SqlDbType.NVarChar, 20);
        comm.Parameters["Author"].Value = bi1.AuthorName;
        //@Genre
        comm.Parameters.Add("Genre", System.Data.SqlDbType.NVarChar, 10);
        if (String.IsNullOrEmpty(lbxGenre.Text))
        {
            comm.Parameters["Genre"].Value = DBNull.Value;
        }
        else
        {
            comm.Parameters["Genre"].Value = lbxGenre.Text;
        }

        //@Pages
        comm.Parameters.Add("Pages", System.Data.SqlDbType.Int);
        comm.Parameters["Pages"].Value = txtNumOfPages.Text;
        //@Landed
        comm.Parameters.Add("Landed", System.Data.SqlDbType.Char, 1);
        if (rdoLanded.Checked)
        {
            comm.Parameters["Landed"].Value = 'Y';
        }
        else
        {
            comm.Parameters["Landed"].Value = 'N';
        }
        //@Friend
        comm.Parameters.Add("Friend", System.Data.SqlDbType.NVarChar, 20);
        if (String.IsNullOrEmpty(txtLandFriName.Text))
        {
            comm.Parameters["Friend"].Value = DBNull.Value;
        }
        else
        {
            comm.Parameters["Friend"].Value = txtLandFriName.Text;
        }
        //@Comments
        comm.Parameters.Add("Comments", System.Data.SqlDbType.NVarChar, 50);
        if (String.IsNullOrEmpty(txtComments.Text))
        {
            comm.Parameters["Comments"].Value = DBNull.Value;
        }
        else
        {
            comm.Parameters["Comments"].Value = txtComments.Text;
        }

        try
        {
            conn.Open();
            comm.ExecuteNonQuery();
            Response.Redirect("AddBooks.aspx");
        }
        catch
        {
            Response.Write("Error adding new book.");
        }
        finally
        {
            conn.Close();
        }

       
    }

}