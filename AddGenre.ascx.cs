using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddGenre : System.Web.UI.UserControl
{
    //only need get
    public object Genre
    {
        get
        {
            string newTxtGenre = newGenreTxtBox.Text;
            string dpdGenre = editGenreTxtBox.SelectedItem.Text;
            object returnGenre;
            if (String.IsNullOrEmpty(newTxtGenre))
            {
                //neither select dropdown list nor input new genre
                if (String.IsNullOrEmpty(dpdGenre))
                {
                    returnGenre = DBNull.Value;
                }
                else
                {
                    returnGenre = dpdGenre;
                }
            }
            else  //get user added new Genre
            {
                returnGenre = newTxtGenre;
            }
            return returnGenre;
        }
    }

    //add Genre btn click event handler
    protected void addGenreLinkBtn_Click(object sender, EventArgs e)
    {
        newGenreTxtBox.Style.Add("display", "block");
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}