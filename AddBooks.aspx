<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBooks.aspx.cs" Inherits="AddBooks" %>
<%@ Register TagPrefix="bi" TagName="BookInfo" Src="~/BookBasicBox.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="IntroText">
        <%-- user control --%>
        <bi:BookInfo ID="bi1" runat="server" />
        <%-- genre --%>
        <asp:Label ID="lblGenre" runat="server" Text="Genre: "></asp:Label>
        <asp:ListBox ID="lbxGenre" runat="server"></asp:ListBox>
        <br />
        <%-- number of pages --%>
        <asp:Label ID="lblNumOfPages" runat="server" Text="Number Of Pages: "></asp:Label>
        <asp:TextBox ID="txtNumOfPages" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requireNumOfPages" runat="server" ErrorMessage="Page Number can not be empty" ControlToValidate="txtNumOfPages" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="compareNumOfPages" runat="server" ErrorMessage="Page Number must be a positive integer" ControlToValidate="txtNumOfPages" Display="Dynamic" Operator="GreaterThan" Type="Integer" ValueToCompare="0" ForeColor="Red"></asp:CompareValidator>
        <br />
        <%-- whether landed to friend --%>
        <asp:Label ID="lblLandToFriend" runat="server" Text="Landed To Friend: "></asp:Label>
        <asp:RadioButton ID="rdoLanded" runat="server" GroupName="LandStatus" Text="Yes"/>
        <asp:RadioButton ID="rdoNotLanded" runat="server" GroupName="LandStatus" Text="No"/>
        <br />
        <%-- name of the friend --%>
        <asp:Label ID="lblLandFriName" runat="server" Text="Friend's Name: "></asp:Label>
        <asp:TextBox ID="txtLandFriName" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="ctmvldLandFriName" runat="server" ErrorMessage="Friend's name can not be empty when the book is landed" ControlToValidate="txtLandFriName" OnServerValidate="CheckLandFriendName" ForeColor="Red" ValidateEmptyText="True"></asp:CustomValidator>
        <br />
        <%-- comments --%>
        <asp:Label ID="lblComments" runat="server" Text="Comments: "></asp:Label>
        <asp:TextBox ID="txtComments" runat="server" Columns="3" Rows="4" TextMode="MultiLine"></asp:TextBox>
        <br />
        <%-- button --%>
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" />


    </div>
</asp:Content>

