<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryDetails.aspx.cs" Inherits="scifiBookStore.SiteAdministration.CategoryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <strong>Category Details:</strong>
    <br />
    <asp:FormView runat="server" ID ="StoreCategoryDetails" RenderOuterTable="true"
        ItemType="scifiBookStore.BLL.Model.StoreCategory" DataKeyNames="CategoryID"
        defaultmode ="readonly" SelectMethod="GetCategory" Width="800px">

        <ItemTemplate>
            <strong>Category Name:</strong>
            <br />
            <%# Item.Name %>
            <br />
            <br />
            <strong>Short Description:</strong>
            <br />
            <%# Item.ShortDescription %>
            <br />
            <br />
            <strong>Description:</strong>
            <br />
            <%# Item.Description %>
            <br />
            <br />
            <strong>Last Updated</strong>
            <br />
            <%# Item.LastUpdated.ToLongDateString() %> - <%# Item.LastUpdated.ToShortTimeString() %>
            <br />
            <br />

        </ItemTemplate>

        <InsertItemTemplate>
            <strong>Category Name:</strong>
            <br />
            <%# Item.Name %>
            <br />
            <br />
            <strong>Short Description:</strong>
            <br />
            <%# Item.ShortDescription %>
            <br />
            <br />
            <strong>Description:</strong>
            <br />
            <%# Item.Description %>
            <br />
            <br />
            <strong>Last Updated</strong>
            <br />
            <%# Item.LastUpdated.ToLongDateString() %> - <%# Item.LastUpdated.ToShortTimeString() %>
            <br />
            <br />

        </InsertItemTemplate>

        <EditItemTemplate>
            <strong>Category Name:</strong>
            <br />
            <%# Item.Name %>
            <br />
            <br />
            <strong>Short Description:</strong>
            <br />
            <%# Item.ShortDescription %>
            <br />
            <br />
            <strong>Description:</strong>
            <br />
            <%# Item.Description %>
            <br />
            <br />
            <strong>Last Updated</strong>
            <br />
            <%# Item.LastUpdated.ToLongDateString() %> - <%# Item.LastUpdated.ToShortTimeString() %>
            <br />
            <br />

        </EditItemTemplate>
    </asp:FormView>
</asp:Content>
