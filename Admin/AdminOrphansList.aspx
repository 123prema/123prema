<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOrphansList.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminOrphansList" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../../Scripts/image.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<h1>Orphan List</h1>

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
    <td>Taluk</td>
    <td>
    <asp:DropDownList ID="ddlTaluk" runat="server" AutoPostBack="true" 
            onselectedindexchanged="ddlTaluk_SelectedIndexChanged">
           </asp:DropDownList>
    </td>
    </tr>

      <tr>
    <td>Orphanage</td>
    <td>
    <asp:DropDownList ID="ddlOrphanage" runat="server" AutoPostBack="true" 
            onselectedindexchanged="ddlOrphanage_SelectedIndexChanged">
           </asp:DropDownList>
    </td>
    </tr>

     <tr>
    <td>Status</td>
    <td>
    <asp:DropDownList ID="ddlStatus" runat="server">
           </asp:DropDownList>
    </td>
    </tr>

    
     <tr>
    <td>Gender</td>
    <td>
        <asp:RadioButtonList ID="rdGender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    </tr>

    <tr>
    <td colspan="2" style="text-align:center;">
    <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />
    </td>
    </tr>

    </table>

  <asp:Label ID="lblerror" runat="server" Text="" CssClass="error"></asp:Label> 
 
        <asp:GridView ID="grdOrphans" runat="server" 
                     AutoGenerateColumns="False" Caption="Orphans List" 
        CssClass="displaytable">
             <Columns>

                  <asp:BoundField DataField="OrphanName" HeaderText="Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                  <asp:BoundField DataField="Age" HeaderText="Age">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 <asp:BoundField DataField="Gender" HeaderText="Gender">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Image")%>'
                CssClass = "miniimg" Style="cursor: pointer" OnClientClick="return LoadDiv(this.src);" />
        </ItemTemplate>
    </asp:TemplateField>


               <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AdminOrphanView.aspx?ID={0}" Text="Info" HeaderText="Info">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:HyperLinkField>
            </Columns>
</asp:GridView>




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
              
      


</asp:Content>
