<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookBasicBox.ascx.cs" Inherits="BookBasicBox" %>

<asp:Label ID="lblBookName" runat="server" Text="Book Name: "></asp:Label>
<asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="requireBookName" runat="server" ErrorMessage="BookName can not be empty!" ControlToValidate="txtBookName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="lblAuthorName" runat="server" Text="Author Name: "></asp:Label>
<asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="requireAuthorName" runat="server" ErrorMessage="AuthorName can not be empty!" ControlToValidate="txtAuthorName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="lblISBN" runat="server" Text="ISBN: "></asp:Label>
<asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
<br />