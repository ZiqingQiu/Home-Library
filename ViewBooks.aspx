<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBooks.aspx.cs" Inherits="ViewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:GridView ID="booksGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                <asp:BoundField DataField="Name" HeaderText="Book Title" />
                <asp:BoundField DataField="Author" HeaderText="Author Name" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

