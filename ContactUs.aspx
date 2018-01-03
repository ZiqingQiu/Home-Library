<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- ContactUs.asax 
<%-- 1.2 add this page for recieving customer feedback and sending confirm emails --%>

<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="AddBookContentPosition">
        <asp:Label ID="lblName" runat="server" Text="Your name: "></asp:Label>       
        <asp:TextBox ID="txtYourName" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="*" ControlToValidate="txtYourName"/>
        <br />
        <br />

        <asp:Label ID="lblEmail" runat="server" Text="Email address: "></asp:Label>  
        <asp:TextBox ID="txtYourEmail" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="*" ControlToValidate="txtYourEmail"/><br />       
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionEmail" SetFocusOnError="true" ErrorMessage="Invalid email format" ControlToValidate="txtYourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
        <br />

        <asp:Label ID="lblComments" runat="server" Text="Comments: "></asp:Label>  
        <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Rows="4" SkinID="textboxmultiline"/>
        <asp:RequiredFieldValidator ID="RequiredComments" runat="server" ErrorMessage="*" ControlToValidate="txtComments" />       
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Send"  OnClick="Button1_Click"/>
 
    </div>
</asp:Content>

