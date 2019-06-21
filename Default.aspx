<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="APL_site.Default" %>

<!DOCTYPE html>


<html>

 <head>
<title>Panel Shop</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="Style.css" rel="stylesheet" />

  </head>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-deep-purple w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-black w3-large w3-deep-purple" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="Default.aspx" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
  
	<!--- submenu --->
	<div class="dropdown">
    <button class="dropbtn">Tools
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Tracking.php">Tracking PO</a>
      <a href="Part_type.aspx">Parts Specs</a>  
	  <a href="Inventory.aspx">Inventory</a>
	
    </div>
  </div>
	
    <a href="WebForm1.aspx" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-black">Assemblies</a>
  </div> 
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <br><br>
   
    <a href="WebForm1.aspx" class="w3-bar-item w3-button w3-padding-large">Standards</a>
  </div>


<!-- Header -->
 <header style="background-color: #3d3c58;">
  <h1 align="center" style="padding:18px 14px;margin:0px;" ><br/><a href="Engraving_room.php"><img src="Images/settings.png"></a>&nbsp;&nbsp;&nbsp;<a href="BOM.aspx"><img src="Images/Enginnerring.png"></a>&nbsp;&nbsp;&nbsp;<a href="Inventory.aspx"><img src="Images/proc.png"></a>&nbsp;&nbsp;&nbsp;<a href="Inventory.aspx"><img src="Images/inven_icon.png"></a>&nbsp;&nbsp;&nbsp;<a href="inventory_menu.html"><img src="Images/manuf.png"></a></h1>
</header>


 

<!-- First Grid -->
<div class="w3-row-padding w3-black w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>APL</h1>
      <h5 class="w3-padding-32">Atronix Pricing and Logistics Portal.</h5>

      <p class="w3-text-grey">This site contains information about the parts used in our ADA system, the parts ordered and received, inventory count and more</p>
    </div>

    <div class="w3-third w3-center">
     
	
    </div>
  </div>
</div>


<!-- Footer -->
<footer class="w3-container w3-black w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32"> </div>
 <p>Atronix  &nbsp &nbsp  Atlanta
3100 Medlock Bridge Rd. | Suite 110
Peachtree Corners, GA 30071
phone 770.840.4045 | fax 770.840.4046</p>
</footer>  


<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>