﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUsersList.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminUsersList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<h1>Users List</h1>

  
  <table class="minitable">
  <tr>
  <td>District</td>
  <td>
      <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="true" 
          onselectedindexchanged="ddlDistrict_SelectedIndexChanged">

      </asp:DropDownList>
  </td>
  </tr>

  </table>

          <asp:Label ID="lblerror" runat="server" Text="" CssClass="error"></asp:Label> 
 
        <asp:GridView ID="grdUsers" runat="server" 
                     AutoGenerateColumns="False" Caption="Users List" 
        CssClass="displaytable">
             <Columns>

                  <asp:BoundField DataField="Name" HeaderText="Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                  <asp:BoundField DataField="Taluk" HeaderText="Taluk">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 <asp:BoundField DataField="Mobile" HeaderText="Mobile">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
               
        
               <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AdminUsersView.aspx?ID={0}" Text="Info" HeaderText="Info">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:HyperLinkField>
            </Columns>
</asp:GridView>


</asp:Content>
