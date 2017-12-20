<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchBooks.aspx.cs" Inherits="SearchBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:SqlDataSource ID="SearchBookSqlSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Homelibrary %>" 
            SelectCommand="SELECT DISTINCT [Genre] FROM [Books]"></asp:SqlDataSource>
      
    <asp:DropDownList
          id="ListBox1"
          runat="server"
          DataTextField="Genre"
          DataValueField="Genre" 
          DataSourceID="SearchBookSqlSource" 
          AppendDataBoundItems ="True">
        <asp:ListItem Text="All" Value ="all" Selected="True"></asp:ListItem>
      </asp:DropDownList>
    </div>
</asp:Content>

