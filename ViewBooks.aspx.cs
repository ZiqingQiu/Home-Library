using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookRepository books = Application["books"] as BookRepository;
        if (books == null)
        {
            lblBook.Text = "No Book";
        }
        else
        {
            StringBuilder table = new StringBuilder();
            table.Append("<table><tr><td>Name</td><td>Author</td><td>ISBN</td>");
            foreach (Book b in books.GetAllBooks())
            {
                table.Append("<tr><td>");
                table.Append(b.BookName);
                table.Append("</td><td>");
                table.Append(b.AuthorName);
                table.Append("</td><td>");
                table.Append(b.ISBN);
                table.Append("</td></tr>");
            }
            table.Append("</table>");
            lblBook.Text = table.ToString();
        }
    }
}