using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBooks : System.Web.UI.Page
{
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
            btnSave.Text = "Valid";
        }
        else
        {
            btnSave.Text = "Invalid";
        }
    }
}