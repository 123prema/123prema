<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Orphanages/Orphanages.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Adoptation_Portal.WebPages.Orphanages.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<h1>Change Password</h1>


<table class="minitable">

            <tr>
                <td>
                   Current Password
                </td>
                <td>
                    <asp:TextBox ID="txtCurPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                   <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Current Password" ControlToValidate="txtCurPassword" ValidationGroup="test" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                   New Password
                </td>
                <td>
                    <asp:TextBox ID="txtNewPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                   <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter New Password" ControlToValidate="txtNewPassword" ValidationGroup="test" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                   Confirm Password
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
              <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Confirm Password" ControlToValidate="txtConfirmPassword" ValidationGroup="test" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center;"> 
                    
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" ValidationGroup="test" 
                        onclick="btnUpdate_Click"/>

                    <br />
                    <asp:Label ID="lblerror" runat="server" Text="" Visible="False" CssClass="error" ></asp:Label>
                </td>
           </tr>
    </table>
    <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label>

</asp:Content>
