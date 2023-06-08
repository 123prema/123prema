<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOrphanagesList.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminOrphanagesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Orphanages List</h1>

  
  <table class="minitable">
  <tr>
  <td>District</td>
  <td>
      <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="true" 
          onselectedindexchanged="ddlDistrict_SelectedIndexChanged">

      </asp:DropDownList>
  </td>
  </tr>

  <tr>
  <td>Status</td>
  <td>
      <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="true" 
          onselectedindexchanged="ddlStatus_SelectedIndexChanged">

      </asp:DropDownList>
  </td>

  </tr>  
  </table>

          <asp:Label ID="lblerror" runat="server" Text="" CssClass="error"></asp:Label> 
 
        <asp:GridView ID="grdOrphanages" runat="server" 
                     AutoGenerateColumns="False" Caption="Orphanages List" 
        CssClass="displaytable">
             <Columns>

                  <asp:BoundField DataField="Orphanage" HeaderText="Orphanage">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                  <asp:BoundField DataField="ContactPerson" HeaderText="Contact Person">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 <asp:BoundField DataField="Mobile" HeaderText="Mobile">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
               
        
               <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AdminOrphanagesView.aspx?ID={0}" Text="Info" HeaderText="Info">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:HyperLinkField>
            </Columns>
            <HeaderStyle CssClass="headerstyle" />
</asp:GridView>


</asp:Content>
