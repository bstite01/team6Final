<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="scifiBookStore.SiteAdministration.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <strong> Categories Listings: </strong>
    <br />
    <asp:GridView runat ="server" ID="StoreCategories" PageSize="5" Width="800px"
        ItemType ="scifiBookStore.BLL.Model.StoreCategory" DataKeyNames="CategoryID" AllowPaging="True"
        AutoGenerateColumns ="False" AllowSorting="False"
        SelectMethod ="GetCategories" BorderWidth="1px">

        <Columns>
            <asp:BoundField DataField="Name" />
            <asp:BoundField DataField="ShortDescription" />
            <asp:BoundField DataField="LastUpdated" />

            <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                    <asp:HyperLink ID ="hplCategoryDetails" NavigateUrl='<%# "CategoryDetails.aspx?id=" + Item.CategoryID %>' Text="View Details" runat="server"></asp:HyperLink>
                </ItemTemplate>


            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
