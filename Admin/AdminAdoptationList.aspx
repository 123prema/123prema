<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAdoptationList.aspx.cs" Inherits="Adoptation_Portal.WebPages.Admin.AdminAdoptationList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Request List</h1>

    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>

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


               <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AdminRequestView.aspx?ID={0}" Text="Info" HeaderText="Info">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:HyperLinkField>
            </Columns>
</asp:GridView>

</asp:Content>
