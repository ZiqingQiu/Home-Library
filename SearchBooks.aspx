<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchBooks.aspx.cs" Inherits="SearchBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:SqlDataSource ID="SearchBookSqlSource" runat="server" ConnectionString="<%$ ConnectionStrings:Homelibrary %>" SelectCommand="SELECT DISTINCT Genre FROM Books"></asp:SqlDataSource>
        <asp:DetailsView ID="searchBookDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="SearchBookSqlSource">
        </asp:DetailsView>
    </div>
</asp:Content>

