using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (null == Session["CurrrentTheme"])
        {
            Session["CurrrentTheme"] = "Light";
        }


    }

    /// <summary>
    /// store session based theme selection
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ThemeChoice_Changed(object sender, EventArgs e)
    {
        if (rdoLight.Checked)
        {
            Session["CurrrentTheme"] = "Light";
        }
        if (rdoDark.Checked)
        {
            Session["CurrrentTheme"] = "Dark";
        }
    }
}