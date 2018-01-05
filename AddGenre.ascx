<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- AddGenre.ascx 
    1. user control to add genre, reduce code duplicity  --%>


<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddGenre.ascx.cs" Inherits="AddGenre" %>

<asp:SqlDataSource ID="genereDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Homelibrary %>" SelectCommand="SELECT DISTINCT [Genre] FROM [Books] WHERE ([Genre] IS NOT NULL)"></asp:SqlDataSource>
<asp:DropDownList id="editGenreTxtBox" runat="server"
    DataSourceID="genereDataSource"
    DataTextField="Genre" DataValueField="Genre"
    SelectedValue='<%# Bind("Genre") %>' />
<br />
<asp:LinkButton ID="addGenreLinkBtn" runat="server" OnClick="addGenreLinkBtn_Click">Genre not found?</asp:LinkButton>
<asp:TextBox ID="newGenreTxtBox" runat="server" style="display:none" placeholder="Type new genre here"></asp:TextBox>
