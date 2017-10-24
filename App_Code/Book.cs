using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    //PROPERTIES
    public string BookName { get; set; }
    public string AuthorName { get; set; }
    public string ISBN { get; set; }


    //CONSTUCTORS
    public Book()
    {
    }

    public Book(string bookname, string authorname, string isbn)
    {
        this.BookName = bookname;
        this.AuthorName = authorname;
        this.ISBN = isbn;
    }
}