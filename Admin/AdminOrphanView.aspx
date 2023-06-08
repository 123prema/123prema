<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOrphanView.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminOrphanView" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<h1>Orphan Details</h1>

<asp:Label ID="lblerror" runat="server" Text=""></asp:Label>

<table class="fulltable">
<tr>
<th colspan="4">
Orphan Details
</th>
</tr>


<tr>
                <td>
                   Name
                </td>
                <td>
                    <asp:Label ID="lblOrphanName" runat="server" Text=""></asp:Label>
                </td>
              
                <td >
                   Age
                </td>
                <td>
                <asp:Label ID="lblAge" runat="server" Text=""></asp:Label>
                </td>
            </tr>

               <tr>
                <td >
                 Gender
                </td>
                <td>
                  <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                </td>
           
       <td>
       About Orphan
       </td>
       <td>
         <asp:Label ID="lblAboutOrphan" runat="server" Text=""></asp:Label>    
           </td>
</tr>

    
       <tr>
            <td>Image</td>
             <td colspan="3" style="text-align:center;">
                    
                  <asp:Image ID="imgImage" runat="server" CssClass="previewimg" />
                    </td>
            </tr>

<tr>

<td colspan="4" style="text-align:center;">
    <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click"  />

    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
        onclick="btnDelete_Click"  />

</td>


</tr>



<tr>
<th colspan="4">
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
      
       <td>
          Email ID
       </td>
       <td>
          <asp:Label ID="lblEmailID" runat="server" Text=""></asp:Label>    
             </td>

                   </tr>
           
                     


</table>

<asp:Label ID="lblID" runat="server" Text=""></asp:Label>

</asp:Content>
