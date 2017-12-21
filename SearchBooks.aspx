<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- SearchBooks.asax 
     1. two dropdownlist use SqlDataSource to retreive ListItem from database--%>

<%@ Page Title="Search Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchBooks.aspx.cs" Inherits="SearchBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="SearchBookCriteriaPosition">
      <asp:SqlDataSource ID="GenreSqlSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Homelibrary %>" 
            SelectCommand="SELECT DISTINCT [Genre] FROM [Books]">
      </asp:SqlDataSource>   
      <asp:DropDownList
          id="genreDpdList"
          runat="server"
          DataTextField="Genre"
          DataValueField="Genre" 
          DataSourceID="GenreSqlSource" 
          AppendDataBoundItems ="True">
        <asp:ListItem Text="All" Value ="All" Selected="True"></asp:ListItem>
      </asp:DropDownList>
      <br />
      <br />
      <asp:SqlDataSource ID="LandFrndNameSqlSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Homelibrary %>" 
            SelectCommand="SELECT DISTINCT [Friend] FROM [Books] WHERE Friend IS NOT NULL">
      </asp:SqlDataSource>   
      <asp:DropDownList
          id="friendDpdList"
          runat="server"
          DataTextField="Friend"
          DataValueField="Friend" 
          DataSourceID="LandFrndNameSqlSource" 
          AppendDataBoundItems ="True">
        <asp:ListItem Text="All" Value ="All" Selected="True"></asp:ListItem>
      </asp:DropDownList>
    </div>
</asp:Content>

