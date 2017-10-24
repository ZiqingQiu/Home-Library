using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookRepository
/// </summary>
public class BookRepository
{
    //FIELDS
    private List<Book> _booklist;

    //CONSTRUCTORS
    public BookRepository()
    {
        _booklist = new List<Book>();
    }

    //PUBLIC METHODS
    public List<Book> GetAllBooks()
    {
        return _booklist;
    }

    public void AddBook(Book b)
    {
        _booklist.Add(b);
    }

    public void DeleteBook(Book b)
    {
        _booklist.Remove(b);
    }
}