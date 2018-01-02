<%-- Ziqing Qiu 300919236 --%>
<%-- COMP229 HomeLibrary Assignment --%>
<%-- NewUserRegister.asax 
<%-- 1.2 add this default page for new user to register --%>
<%@ Page Title="Register new user" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewUserRegister.aspx.cs" Inherits="NewUserRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagecontent" Runat="Server">
    <div id="AddBookContentPosition">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</asp:Content>

