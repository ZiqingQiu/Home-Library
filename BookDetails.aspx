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
        <asp:SqlDataSource ID="genereDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Homelibrary %>" SelectCommand="SELECT DISTINCT [Genre] FROM [Books] WHERE ([Genre] IS NOT NULL)"></asp:SqlDataSource>
        <asp:DetailsView ID="bookDetailsView" runat="server" AutoGenerateRows="False" OnItemDeleting="bookDetailsView_ItemDeleting" OnModeChanging="bookDetailsView_ModeChanging" OnItemUpdating="bookDetailsView_ItemUpdating">
            <Fields>
                <asp:TemplateField HeaderText="Book Title" SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="editTitleTxtBox" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requireTitle" runat="server" ErrorMessage="Book Title can not be empty" ControlToValidate="editTitleTxtBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author Name" SortExpression="Author">
                    <EditItemTemplate>
                        <asp:TextBox ID="editAuthorNameTxtBox" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requireAuthorName" runat="server" ErrorMessage="Author Name can not be empty" ControlToValidate="editAuthorNameTxtBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="authorNameLabel" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                    <EditItemTemplate>
                        <asp:TextBox ID="editISBNTxtBox" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requireISBN" runat="server" ErrorMessage="ISBN can not be empty" ControlToValidate="editISBNTxtBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Genre" SortExpression="Genre">
                    <EditItemTemplate>
                        <asp:DropDownList id="editGenreTxtBox" runat="server"
                            DataSourceID="genereDataSource"
                            DataTextField="Genre" DataValueField="Genre"
                            SelectedValue='<%# Bind("Genre") %>' />
                        <br />
                        <asp:LinkButton ID="addGenreLinkBtn" runat="server" OnClick="addGenreLinkBtn_Click">Genre not found?</asp:LinkButton>
                        <asp:TextBox ID="newGenreTxtBox" runat="server" style="display:none" placeholder="Type new genre here"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="editGenreTxtBox" runat="server"></asp:TextBox>                  
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="genreLabel" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Pages" SortExpression="Pages">
                    <EditItemTemplate>
                        <asp:TextBox ID="editTotalPagesTxtBox" runat="server" Text='<%# Bind("Pages") %>'></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requireNumOfPages" runat="server" ErrorMessage="Page Number can not be empty" ControlToValidate="editTotalPagesTxtBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="compareNumOfPages" runat="server" ErrorMessage="Page Number must be a positive integer" ControlToValidate="editTotalPagesTxtBox" Operator="GreaterThan" Type="Integer" ValueToCompare="0" SetFocusOnError="True"></asp:CompareValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="totalPagesLabel" runat="server" Text='<%# Bind("Pages") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Is Landed" SortExpression="Landed">
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="editIsLandedRdoBtnList" runat="server">
                            <asp:ListItem Value ="0" Selected ="True">Y</asp:ListItem>
                            <asp:ListItem Value ="1">N</asp:ListItem>
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="isLandedLabel" runat="server" Text='<%# Bind("Landed") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Friend Name" SortExpression="Friend">
                    <EditItemTemplate>
                        <asp:TextBox ID="editFriendNameTxtBox" runat="server" Text='<%# Bind("Friend") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="friendNameLabel" runat="server" Text='<%# Bind("Friend") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Comments" SortExpression="Comments">
                    <EditItemTemplate>
                        <asp:TextBox ID="editCommentsTxtBox" runat="server" Text='<%# Bind("Comments") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("Comments") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"/>               
            </Fields>
            <HeaderTemplate>
                <%#Eval("Title")%>
            </HeaderTemplate>
        </asp:DetailsView>
    </div>
</asp:Content>

