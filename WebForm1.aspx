<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="APL_site.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Assemblies
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link href="Style.css" rel="stylesheet" />

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
   
   <p> </p>
    <p> </p>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="487px" Width="1413px" AllowSorting="True" BackColor="White" BorderStyle="Solid" EnableSortingAndPagingCallbacks="True" Font-Names="Segoe UI" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#CCCCCC" Font-Names="Segoe UI" Font-Size="Medium" />
        <EditRowStyle Height="54px" HorizontalAlign="Center" />
        <FooterStyle BackColor="#333399" BorderStyle="Solid" />
        <HeaderStyle BackColor="#343434" BorderStyle="Double" ForeColor="White" Height="54px" />
        <RowStyle Height="54px" HorizontalAlign="Center" />
    </asp:GridView>
   
</asp:Content>
