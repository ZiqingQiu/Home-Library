<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBooks.aspx.cs" Inherits="AddBooks" %>
<%@ Register TagPrefix="bi" TagName="BookInfo" Src="~/BookBasicBox.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="IntroText">
        <bi:BookInfo ID="bi1" runat="server" />
    </div>
</asp:Content>

