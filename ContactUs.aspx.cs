using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SmtpClient smtpClient = new SmtpClient();
        MailMessage message = new MailMessage();

        try
        {
            MailAddress fromAddress = new MailAddress("qziqing@gmail.com", "From Homelibrary");
            MailAddress toAddress = new MailAddress(txtYourEmail.Text, "To" + txtYourName.Text);
            message.From = fromAddress;
            message.To.Add(toAddress);
            message.Subject = "We recieved your comments!";
            message.Body = "Thank you for your comments, we have recieved your comments as below.\n" + txtComments.Text;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential("qziqing@gmail.com", "Zhaixf@201407");
            smtpClient.Send(message);
            statusLabel.Text = "Email sent successfully!";
        }
        catch (Exception ex)
        {
           statusLabel.Text = "Email sent failed!";
        }
        finally
        {
        }
    }
}