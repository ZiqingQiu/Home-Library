<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBooks.aspx.cs" Inherits="ViewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:GridView ID="booksGridView" runat="server" AutoGenerateColumns="False" OnRowCommand="BooksGridView_RowCommand" EnableViewState="False">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                <asp:TemplateField HeaderText="Book Title">
                    <ItemTemplate>                      
                        <asp:LinkButton ID="detailsButton" runat="server" Text='<%# Eval("Name") %>' 
                            CommandName="MoreDetailsPlease" CommandArgument=<%#Eval("ISBN")%>></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Author" HeaderText="Author Name" />                     
            </Columns>
        </asp:GridView>
        <asp:Label ID="extraDetailsLiteral" runat="server" Text="No Value"></asp:Label>
    </div>
</asp:Content>

