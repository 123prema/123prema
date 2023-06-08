<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDocumentsList.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminDocumentsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<h1>Document Types List</h1>

<table class="minitable">
<tr>
<td style="width:35%;">
    Document Type
</td>
<td>
  <asp:TextBox ID="txtDocumentType" runat="server"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Document Type" ControlToValidate="txtDocumentType" ValidationGroup="test" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
</td>
</tr>

  <tr>
        <td colspan="2" style="text-align:center;">
             <asp:Button ID="btnAdd" runat="server" Text="Add" ValidationGroup="test" 
                        ToolTip="Click here to Add" onclick="btnAdd_Click"/>
                 
        </td>
        </tr>

</table>


<asp:GridView ID="grdDocumentTypes" runat="server" 
                     AutoGenerateColumns="False" Caption="DocumentType List"  
    DataKeyNames="ID" CssClass="minitable" 
    onrowdatabound="grdDocumentTypes_RowDataBound" 
    onrowdeleting="grdDocumentTypes_RowDeleting">
             <Columns>
                <asp:BoundField DataField="DocumentType" HeaderText="Document Types">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 <asp:CommandField ShowDeleteButton="True" />  
            </Columns>
             <PagerStyle CssClass="footerstyle" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#330000" Font-Bold="True" ForeColor="White" />
</asp:GridView>




</asp:Content>
