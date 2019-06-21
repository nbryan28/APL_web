<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BOM.aspx.cs" Inherits="APL_site.BOM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

   <link href="Grid_v.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <p></p>  <p></p>
    <br/>  <br/> 
    <div runat="server" id="toyo"></div>
   <div>
       &nbsp; &nbsp; &nbsp; Please Select a Job N#&nbsp;&nbsp;&nbsp; &nbsp;
     <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="mr_name" DataValueField="mr_name" Width="296px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>

       &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please select a Bill Of Material: &nbsp;&nbsp; &nbsp;
     <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="mr_name" DataValueField="mr_name" Width="681px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
       </div>

  <%--    <div  runat="server" style="width: 1873px; overflow: auto; height: 648px; margin-right: 0px;">--%>

       <br />
       <br />
       <br />
     
   <div runat="server"  style="width:100%; height:100%;  overflow:scroll;">
          <asp:GridView ID="GridView2" runat="server" Height="237px" Width="1842px"  CssClass="GridView2" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
              <AlternatingRowStyle CssClass="AltRow" />
<HeaderStyle CssClass="header"></HeaderStyle>

<RowStyle CssClass="rows"></RowStyle>
          </asp:GridView>
     
   
    </div>
</asp:Content>
