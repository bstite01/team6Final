﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryDetails.aspx.cs" Inherits="scifiBookStore.SiteAdministration.CategoryDetails" %>
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
            <%# Eval("Name") %>
            <br />
            <br />
            <strong>Short Description:</strong>
            <br />
            <%# Eval ("ShortDescription") %>
            <br />
            <br />
            <strong>Description:</strong>
            <br />
            <%# Eval("Description") %>
            <br />
            <br />
            <strong>Last Updated</strong>
            <br />
            <%# Eval("LastUpdated") %>
            <br />
            <br />

        </ItemTemplate>
    </asp:FormView>
</asp:Content>
