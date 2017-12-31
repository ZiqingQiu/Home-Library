<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- BookDetails.aspx 
     1. this page is generated when user click one book from ViewBook page
     2. use DetailView to display perticular book info--%>

<%@ Page Title="Book Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="ViewBookContentPosition">
        <asp:DetailsView ID="bookDetailsView" runat="server" AutoGenerateRows="False" OnItemDeleting="bookDetailsView_ItemDeleting" OnItemUpdated="bookDetailsView_ItemUpdated" OnModeChanging="bookDetailsView_ModeChanging">
            <Fields>
                <asp:TemplateField HeaderText="Book Title" SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author Name" SortExpression="Author">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Genre" SortExpression="Genre">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Genre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Pages" SortExpression="Pages">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Pages") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Pages") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Is Landed" SortExpression="Landed">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Landed") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Landed") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Friend Name" SortExpression="Friend">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Friend") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Friend") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Comments" SortExpression="Comments">
                    <EditItemTemplate>
                        <asp:TextBox ID="editXXXTxtBox" runat="server" Text='<%# Bind("Comments") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="XXXLabel" runat="server" Text='<%# Bind("Comments") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />               
            </Fields>
            <HeaderTemplate>
                <%#Eval("Title")%>
            </HeaderTemplate>
        </asp:DetailsView>
    </div>
</asp:Content>

