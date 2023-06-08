<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminRequestView.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminRequestView" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../../Scripts/image.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



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
             <td style="text-align:center;">
                    
                  <asp:Image ID="imgImage" runat="server" CssClass="previewimg" />
                    </td>

                       <td>Status</td>
             <td style="text-align:center;">
                    
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>    

                    </td>
            </tr>

<tr>

<td colspan="4" style="text-align:center;">
    <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click"  />

    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
        onclick="btnDelete_Click"  />
</td>


</tr>


<td colspan="4" style="text-align:center;">
  <asp:GridView ID="grdDocuments" runat="server" 
                     AutoGenerateColumns="False" Caption="Documents List" 
        CssClass="displaytable">
             <Columns>

                  <asp:BoundField DataField="DcoumentType" HeaderText="Dcoument Type">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                
                <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Documents")%>'
                CssClass = "miniimg" Style="cursor: pointer" OnClientClick="return LoadDiv(this.src);" />
        </ItemTemplate>
    </asp:TemplateField>
            </Columns>
</asp:GridView>
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
           
                     


                     <tr>
<th colspan="4">
User Details
</th>
</tr>


<tr>
                <td>
                   Name
                </td>
                <td>
                    <asp:Label ID="lblUName" runat="server" Text=""></asp:Label>
                </td>
              
                <td >
                   Address Line1
                </td>
                <td>
                <asp:Label ID="lblUAddressLine1" runat="server" Text=""></asp:Label>
                </td>
            </tr>

               <tr>
                <td >
                   Address Line2
                </td>
                <td>
                  <asp:Label ID="lblUAddressLine2" runat="server" Text=""></asp:Label>
                </td>
        
       <td>
         Taluk
       </td>
       <td>
         <asp:Label ID="lblUTaluk" runat="server" Text=""></asp:Label>    
           </td>
</tr>

             <tr>
       <td>
          District
       </td>
       <td>
          <asp:Label ID="lblUDistrict" runat="server" Text=""></asp:Label>    
             </td>
             
                <td >
                   Mobile
                </td>
                <td>
                   <asp:Label ID="lblUMobile" runat="server" Text=""></asp:Label>        
                           </td>
            </tr>
           
    
</table>

  <div id="divBackground" class="modal">
</div>
<div id="divImage">
<table style="height: 100%; width: 100%">
    <tr>
        <td valign="middle" align="center">
            <img id="imgLoader" alt="" src="images/loader.gif" />
            <img id="imgFull" alt="" src="" style="display: none; height: 500px; width: 590px" />
        </td>
    </tr>
    <tr>
        <td align="center" valign="bottom">
            <input id="btnClose" type="button" value="close" onclick="HideDiv()" />
        </td>
    </tr>
</table>
</div>

<asp:Label ID="lblID" runat="server" Text=""></asp:Label>
<asp:Label ID="lblOrphanID" runat="server" Text=""></asp:Label>
<asp:Label ID="lblUserID" runat="server" Text=""></asp:Label>
</asp:Content>
