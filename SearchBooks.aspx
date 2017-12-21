<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- SearchBooks.asax 
     1. two dropdownlist use SqlDataSource to retreive ListItem from database--%>

<%@ Page Title="Search Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchBooks.aspx.cs" Inherits="SearchBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="SearchBookCriteria">
        <asp:SqlDataSource ID="GenreSqlSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Homelibrary %>" 
            SelectCommand="SELECT DISTINCT [Genre] FROM [Books]">
        </asp:SqlDataSource>   
        <asp:Label ID="genreLbl" runat="server" Text="Genre: "></asp:Label>
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
        <h3>AND</h3>
        <asp:SqlDataSource ID="LandFrndNameSqlSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Homelibrary %>" 
            SelectCommand="SELECT DISTINCT [Friend] FROM [Books] WHERE Friend IS NOT NULL">
        </asp:SqlDataSource> 
        <asp:Label ID="friendLbl" runat="server" Text="Land Friend's Name: "></asp:Label>
        <asp:DropDownList
            id="friendDpdList"
            runat="server"
            DataTextField="Friend"
            DataValueField="Friend" 
            DataSourceID="LandFrndNameSqlSource" 
            AppendDataBoundItems ="True">
        <asp:ListItem Text="All" Value ="All" Selected="True"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" />
    </div>

    <div id="SearchBookResult">
        <asp:GridView ID="resultGrid" runat="server" AutoGenerateColumns="False" EmptyDataText="No Book Found!">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Book Title" ReadOnly="True" SortExpression="Title" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                <asp:BoundField DataField="Author" HeaderText="Author" ReadOnly="True" SortExpression="Author" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" ReadOnly="True" SortExpression="Genre" />
                <asp:BoundField DataField="Friend" HeaderText="Friend's Name" ReadOnly="True" SortExpression="Friend" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

