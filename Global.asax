<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        Application.Clear();
        Application["books"] = null;
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        CheckSessionId();
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Session["CurrrentTheme"] = null;
    }

    void CheckSessionId()
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["ASP.NET_SessionId"];
        if (userCookie == null)
        {
            userCookie = new HttpCookie("ASP.NET_SessionId", System.Web.HttpContext.Current.Session.SessionID);
            userCookie.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(userCookie);
            Session["CurrrentTheme"] = "Light";
        }
        else
        {
            Response.Cookies["ASP.NET_SessionId"].Value = System.Web.HttpContext.Current.Session.SessionID;
        }
        //always throw back this sessinid

    }

</script>
