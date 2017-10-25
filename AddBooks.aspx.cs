using System;
using System.Collections.Generic;
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
        /*
        //user control
        bi1.BookName = String.Empty;
        bi1.AuthorName = String.Empty;
        bi1.ISBN = String.Empty;
        //web server control
        txtNumOfPages.Text = String.Empty;
        rdoLanded.Checked = false;
        rdoNotLanded.Checked = false;
        txtLandFriName.Text = String.Empty;
        txtComments.Text = String.Empty;
        */
        Response.Redirect("AddBooks.aspx");
    }

    /// <summary>
    /// This method will add book object into books collection
    /// </summary>
    protected void AddBook()
    {
        BookRepository books = Application["books"] as BookRepository;
        if (null == books)
        {
            books = new BookRepository();
            Application["books"] = books;
        }

        books.AddBook(new Book(bi1.BookName, bi1.AuthorName, bi1.ISBN));
    }

}