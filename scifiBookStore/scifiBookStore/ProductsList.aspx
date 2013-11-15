﻿<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ProductsList.aspx.cs" Inherits="scifiBookStore.ProductsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Page.Title %></h1>
            </hgroup>

            <section class="featured">
                <ul>
                    <asp:ListView ID="productList" runat="server"
                        DataKeyNames="ProductID"
                        GroupItemCount="3" ItemType="scifiBookStore.BLL.Model.Product" SelectMethod="GetProducts">
                        <EmptyDataTemplate>
                            <table id="Table1" runat="server">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td id="Td1" runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <td id="Td2" runat="server">
                                <table>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <a href="<%#: GetRouteUrl("ProductByNameRoute", new {productName = Item.Name}) %>">
                                                <image src='/Images/<%#:Item.Image%>'
                                                    width="100" height="120" border="1" />
                                            </a>
                                        </td>
                                        <td>
                                            <a href="<%#: GetRouteUrl("ProductByNameRoute", new {productName = Item.Name}) %>">
                                                <%#:Item.Name%>
                                            </a>
                                            <br />
                                            <span class="ProductPrice">
                                                <b>Price: </b><%#:String.Format("{0:c}", Item.Price)%>
                                            </span>
                                            <br />
                                            <a href="/AddToCart.aspx?productID=<%#:Item.productID %>">
                                                <span class="ProductListItem">
                                                    <b>Add To Cart<b>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table id="Table2" runat="server">
                                <tr id="Tr1" runat="server">
                                    <td id="Td3" runat="server">
                                        <table id="groupPlaceholderContainer" runat="server">
                                            <tr id="groupPlaceholder" runat="server"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr id="Tr2" runat="server">
                                    <td id="Td4" runat="server"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:ListView>
                </ul>
            </section>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>