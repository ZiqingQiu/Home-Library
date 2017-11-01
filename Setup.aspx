<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="Setup" ViewStateMode="Disabled" EnableViewState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="IntroText">
        <asp:Label ID="lblTheme" runat="server" Text="Choose Page Theme: "></asp:Label>
        <asp:radiobutton runat="server" id="rdoLight" GroupName="PageTheme" Text="Light" OnCheckedChanged="ThemeChoice_Changed" AutoPostBack="True" ViewStateMode="Enabled"></asp:radiobutton>
        <asp:radiobutton runat="server" id="rdoDark" GroupName="PageTheme" Text="Dark"  OnCheckedChanged="ThemeChoice_Changed" AutoPostBack="True" ViewStateMode="Enabled"></asp:radiobutton>
    </div>
</asp:Content>

