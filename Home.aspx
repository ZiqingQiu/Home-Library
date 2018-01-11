<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- Home.asax --%>

<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="HomeContentPosition">
        <h2>New to the Library?</h2>
        <p>The home library is an application used to collect personal books.</p>
        <p>From this website, you can add a new book, view all the books, and search a book</p>
        <asp:Label ID="lblTotalVisitors" runat="server"></asp:Label>
        <h2>Videos about the Library</h2>
        <iframe src="https://www.youtube.com/embed/fraBg8dIWDI?ecver=2" style="position:absolute;left:0" width="641" height="360"></iframe>     
    </div>  
</asp:Content>

