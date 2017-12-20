<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:DetailsView ID="bookDetailsView" runat="server" AutoGenerateRows="False" CssClass="GridMain">
            <Fields>
                <asp:BoundField DataField="Title" HeaderText="Book Title" ReadOnly="True" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author Name" ReadOnly="True" SortExpression="Author" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" ReadOnly="True" SortExpression="Genre" />
                <asp:BoundField DataField="Pages" HeaderText="Total Pages" ReadOnly="True" SortExpression="Pages" />
                <asp:BoundField DataField="Landed" HeaderText="Is Landed" ReadOnly="True" SortExpression="Landed" />
                <asp:BoundField DataField="Friend" HeaderText="Friend Name" ReadOnly="True" SortExpression="Friend" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" ReadOnly="True" SortExpression="Comments" />
            </Fields>
            <HeaderTemplate>
                <%#Eval("Title")%>
            </HeaderTemplate>
            <RowStyle CssClass="GridRow" />
            <HeaderStyle CssClass="GridHeader" />
        </asp:DetailsView>
    </div>
</asp:Content>

