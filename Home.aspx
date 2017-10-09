<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/Orange/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="IntroText">
        <h1>New to the Library?</h1>
        <p>The home library is an application used to collect personal books.</p>
        <p>At the library, you can add a new book, view all the books, and search a book</p>
        <h1>Videos about the Library</h1>
        <iframe src="https://www.youtube.com/embed/fraBg8dIWDI?ecver=2" style="position:absolute;left:0" width="641" height="360" frameborder="0" allowfullscreen></iframe>
    </div>

    
</asp:Content>

