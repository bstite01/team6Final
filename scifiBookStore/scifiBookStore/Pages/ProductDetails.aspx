<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="scifiBookStore.SiteAdministration.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<strong>Viewing Product Details:</strong>

    <asp:FormView runat="server" ID="StoreProductDetails"  RenderOuterTable="true" 
        ItemType="scifiBookStore.BLL.Model.Product" DataKeyNames="ProductID"
        DefaultMode="ReadOnly" SelectMethod="GetProduct" Width="800px">
        <ItemTemplate>
            <strong>Product Name:</strong>
            <br />
            <%# Item.Name %>
            <br />
            <img src="/Images/<%#:Item.Image %>" border="1" alt="<%#:Item.Name %>" height="300" />
            <br />
            <strong>Product Category: </strong>
            <br />
            <%# Item.Category.Name %>
            <br />
            <br />
            <strong>Description:</strong>
            <br />
            <%# Item.Description %>
            <br />
            <br />
            <strong>Price:</strong>
            <br />
            <%# Item.Price %>
            <br />
            <br />
            <strong>Units In Stock:</strong>
            <br />
            <%# Item.UnitsInStock %>
            <br />
            <br />
            <strong>Stock Last Updated:</strong>
            <br />
            <%# Item.LastUpdated.ToLongDateString() %> - <%# Item.LastUpdated.ToShortTimeString() %>
            <br />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
