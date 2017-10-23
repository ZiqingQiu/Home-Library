using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookBasicBox : System.Web.UI.UserControl
{
    //PROPERTIES
    public string BookName
    {
        get
        {
            return txtBookName.Text;
        }
        set
        {
            txtBookName.Text = value;
        }
    }

    public string AuthorName
    {
        get
        {
            return txtAuthorName.Text;
        }
        set
        {
            txtAuthorName.Text = value;
        }
    }

    public string ISBN
    {
        get
        {
            return txtISBN.Text;
        }
        set
        {
            txtISBN.Text = value;
        }
    }

    //METHODS
    protected void Page_Load(object sender, EventArgs e)
    {

    }

}