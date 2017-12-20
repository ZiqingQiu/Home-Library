<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:DetailsView ID="bookDetailsView" runat="server" AutoGenerateRows="False" OnItemDeleting="bookDetailsView_ItemDeleting">
            <Fields>
                <asp:BoundField DataField="Title" HeaderText="Book Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author Name"  SortExpression="Author" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Pages" HeaderText="Total Pages" SortExpression="Pages" />
                <asp:BoundField DataField="Landed" HeaderText="Is Landed" SortExpression="Landed" />
                <asp:BoundField DataField="Friend" HeaderText="Friend Name" SortExpression="Friend" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                <asp:ButtonField CommandName="Delete" Text="Delete" />
            </Fields>
            <HeaderTemplate>
                <%#Eval("Title")%>
            </HeaderTemplate>
        </asp:DetailsView>
    </div>
</asp:Content>

