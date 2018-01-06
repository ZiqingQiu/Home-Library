<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GoogleBookSearch.aspx.cs" Inherits="GoogleBookSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="https://www.google.com/books/jsapi.js"></script>
    <script type="text/javascript">
      google.books.load();
      function initialize() {
          var viewer = new google.books.DefaultViewer(document.getElementById('viewerCanvas'));
          var ISBNstring = 'ISBN:' + document.getElementById('pagecontent_lblISBN').textContent;
          viewer.load(ISBNstring);
      }
      google.books.setOnLoadCallback(initialize);
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
<asp:Label ID="lblISBN" runat="server"></asp:Label>
<div id="viewerCanvas" style="width: 600px; height: 500px"></div>
</asp:Content>

