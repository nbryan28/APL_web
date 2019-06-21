<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="APL_site.Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Grid_v.css" rel="stylesheet" />
 <style>
 nav {
  float: left;
  width: 15%;
  height: 1500px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 23px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 81%;
  background-color: #f1f1f1;
  height: 1500px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}

    </style>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <p></p><br />
  
  <section>
  <nav>
   <a><img src="/Images/wareo.png" height="342" width="292"></a>
  
  <a> <form>    <!--- Call Search_p.php to search for all the parts that contain the entered word -->
   Enter Part name:<br><br>
  <input type="text" name="Partname" autofocus> <br><br>
  <button name="subject" type="submit" value="Search">Search</button>
  </form> </a>
  </nav>
  
      <article>
           <div runat="server"  style="width:100%; height:100%; overflow:scroll;">
               <p></p> 
               <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="1468px"></asp:TextBox><p></p>
               <asp:GridView ID="GridView3" runat="server" Height="237px" Width="1842px"  CssClass="GridView2" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
              <AlternatingRowStyle CssClass="AltRow" />
<HeaderStyle CssClass="header"></HeaderStyle>

<RowStyle CssClass="rows"></RowStyle>
          </asp:GridView>
           </div>
      </article>
 
</section>
</asp:Content>
