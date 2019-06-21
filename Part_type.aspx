<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Part_type.aspx.cs" Inherits="APL_site.Part_type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

   <link href="Style.css" rel="stylesheet" />
   

</asp:Content>
 <asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
   
    <p></p>
      
     <h1> <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Parts Catalog</h1>
   <p></p>
   
     <h2><span style="font-size:18px;cursor:pointer" onclick="openNav()">&nbsp;&nbsp &#9776; search</span></h2>


    <!-- Side menu searching textbox -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a><img src="/Images/binocular.png" height="342" width="292"></a>
  
  <a> <form>    <!--- Call Search_p.php to search for all the parts that contain the entered word -->
   Enter Part name:<br><br>
  <input type="text" name="Partname" autofocus> <br><br>
  <button name="subject" type="submit" value="Search">Search</button>
  </form> </a>
  
 </div>
    
    
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
       
    <p>
    </p>

    <script>


function openNav() {
	
    document.getElementById("mySidenav").style.width = "400px";
	
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>


</asp:Content>
