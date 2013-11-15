<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="scifiBookStore.SiteAdministration.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <strong>Product Listings:</strong>
    <br />

    <asp:GridView ID="ProductsList" runat="server" ItemType="scifiBookStore.BLL.Model.Product"
        GridLines="Horizontal" SelectMethod="GetProducts" AutoGenerateColumns="false" AllowSorting="false"
        allowpaging="true" DataKeyNames="ProductID" PageSize="5" Width="800px" BorderWidth="1px">

    <Columns>

        <asp:BoundField DataField="Name" />
        <asp:BoundField DataField="ShortDescription" />
        <asp:BoundField DataField="Price" />
        <asp:BoundField DataField="UnitsInStock" />
        <asp:TemplateField ShowHeader="false">
            <ItemTemplate>
                <asp:HyperLink ID="hplProductDetails" NavigateUrl='<%# "ProductDetails.aspx?id=" + Item.productID %>' Text="View Details" runat="server"></asp:HyperLink>

            </ItemTemplate>

        </asp:TemplateField>
    </Columns>



    </asp:GridView>
</asp:Content>
