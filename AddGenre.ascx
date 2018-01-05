<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- AddGenre.ascx 
    1. user control to add genre, reduce code duplicity  --%>


<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddGenre.ascx.cs" Inherits="AddGenre" %>


<asp:SqlDataSource ID="genereDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Homelibrary %>" SelectCommand="SELECT DISTINCT [Genre] FROM [Books] WHERE ([Genre] IS NOT NULL)"></asp:SqlDataSource>

<asp:DropDownList
    id="editGenreTxtBox"
    runat="server"
    DataTextField="Genre"
    DataValueField="Genre" 
    DataSourceID="genereDataSource">
</asp:DropDownList>
<br />
<span style="position:relative;">
<asp:LinkButton ID="addGenreLinkBtn" runat="server" OnClick="addGenreLinkBtn_Click" CausesValidation="False">Genre not found?</asp:LinkButton>
<asp:TextBox ID="newGenreTxtBox" runat="server" style="display:none" placeholder="Type new genre here"></asp:TextBox>
</span>

