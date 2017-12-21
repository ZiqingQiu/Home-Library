<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookBasicBox.ascx.cs" Inherits="BookBasicBox" %>

<asp:Label ID="lblBookName" runat="server" Text="Book Title: "></asp:Label>
<asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="requireBookName" runat="server" ErrorMessage="BookName can not be empty" ControlToValidate="txtBookName" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="lblAuthorName" runat="server" Text="Author Name: "></asp:Label>
<asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="requireAuthorName" runat="server" ErrorMessage="AuthorName can not be empty" ControlToValidate="txtAuthorName" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="lblISBN" runat="server" Text="ISBN: "></asp:Label>
<asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="requireISBN" runat="server" ErrorMessage="ISBN can not be empty" ControlToValidate="txtISBN" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />

