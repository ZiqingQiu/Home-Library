<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- ContactUs.asax 
<%-- 1.2 add this page for recieving customer feedback and sending confirm emails --%>

<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="AddBookContentPosition">
        Your name:
        <asp:TextBox ID="txtYourName" runat="server"/><br />
        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="*" ControlToValidate="txtYourName"/><br />
        
        Your email address:
        <asp:TextBox ID="txtYourEmail" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="*" ControlToValidate="txtYourEmail"/><br />       
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionEmail" SetFocusOnError="true" ErrorMessage="Example: username@gmail.com" ControlToValidate="txtYourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" /><br />

        Your Comments:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="Comments" /><br />
        <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Rows="10" />
    
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Send"  OnClick="Button1_Click" ValidationGroup="save" />
    
    </div>
</asp:Content>

