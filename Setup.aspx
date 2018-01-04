<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- Setup.asax 
     1. store user theme option--%>

<%@ Page Title="Setup Theme" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="Setup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="IntroText">
        <asp:Label ID="lblTheme" runat="server" Text="Choose Page Theme: "></asp:Label>
        <asp:radiobutton runat="server" id="rdoLight" GroupName="PageTheme" Text="Light" OnCheckedChanged="ThemeChoice_Changed" AutoPostBack="True"></asp:radiobutton>
        <asp:radiobutton runat="server" id="rdoDark" GroupName="PageTheme" Text="Dark"  OnCheckedChanged="ThemeChoice_Changed" AutoPostBack="True"></asp:radiobutton>
    </div>
</asp:Content>

