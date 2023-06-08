<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOrphanagesView.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminOrphanagesView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<h1>Orphanage Details</h1>

<asp:Label ID="lblerror" runat="server" Text=""></asp:Label>

<table class="minitable">
<tr>
<th colspan="2">
Orphanage Details
</th>
</tr>


<tr>
                <td>
                   Orphanage
                </td>
                <td>
                    <asp:Label ID="lblOrphanage" runat="server" Text=""></asp:Label>
                </td>
                </tr>

                <tr>
                <td>
                   Contact Person
                </td>
                <td>
                    <asp:Label ID="lblContactPerson" runat="server" Text=""></asp:Label>
                </td>
                  </tr>

                <tr>
                <td >
                   Address Line1
                </td>
                <td>
                <asp:Label ID="lblAddressLine1" runat="server" Text=""></asp:Label>
                </td>
            </tr>

               <tr>
                <td >
                   Address Line2
                </td>
                <td>
                  <asp:Label ID="lblAddressLine2" runat="server" Text=""></asp:Label>
                </td>
            </tr>

                <tr>
       <td>
         Taluk
       </td>
       <td>
         <asp:Label ID="lblTaluk" runat="server" Text=""></asp:Label>    
           </td>
</tr>

             <tr>
       <td>
          District
       </td>
       <td>
          <asp:Label ID="lblDistrict" runat="server" Text=""></asp:Label>    
             </td>
               </tr>

                <tr>
                <td >
                   Mobile
                </td>
                <td>
                   <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label>        
                           </td>
            </tr>
           
                        <tr>
       <td>
          Email ID
       </td>
       <td>
          <asp:Label ID="lblEmailID" runat="server" Text=""></asp:Label>    
             </td>

</tr>

      <tr>
       <td>
        Status
       </td>
       <td>
          <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>    
             </td>

</tr>


<tr>

<td colspan="2" style="text-align:center;">
    <asp:Button ID="btnApprove" runat="server" Text="Approve" 
        onclick="btnApprove_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
        onclick="btnDelete_Click" />
    <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click" />
</td>


</tr>

</table>

<asp:Label ID="lblID" runat="server" Text=""></asp:Label>
</asp:Content>
