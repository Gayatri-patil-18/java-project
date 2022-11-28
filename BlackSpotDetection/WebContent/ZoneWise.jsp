<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    
<%@ page import="com.rcpit.blackspot.*" %>
<%@ page import="java.sql.*" %>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Black Spot Detection</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Augment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
	<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
	<!-- /js -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- //js-->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			
					<!-- //header-ends -->
						<!--outter-wp-->
							<div class="outter-wp">
									<!--sub-heard-part-->
									  <div class="sub-heard-part">
									   <ol class="breadcrumb m-b-0">
									   <li><a href="admin1.html">Log Out</a></li>
										</ol>
									   </div>
								  <!--//sub-heard-part-->
									<div class="graph-visual tables-main">

													<h3 class="inner-tittle two">Red Zone</h3>
														  <div class="graph">
															<div class="tables">
														
																<table class="table table-bordered"> <thead> <tr> <th>Location Name</th> <th>Address</th> <th>Reason</th> <th>Latitude</th> <th>Longitude</th> <th>Level</th> <th>City</th> </tr> </thead> <tbody>
																<%
																 try
																{
																	 Connection con = ConnectionDB.connect(); 
																	 PreparedStatement ps1 = con.prepareStatement("select * from blackspot where Level=2 "); 
																	 
																	 ResultSet rs = ps1.executeQuery(); 
																	 while(rs.next())
																	{
																%>  
																 	<tbody> <tr> <td><%=rs.getString("Lname") %></td> <td><%=rs.getString("Add") %></td> <td><%=rs.getString("Reason") %></td> <td><%=rs.getString("Latitude") %></td> <td><%=rs.getString("Longitude") %></td>  <td><%=rs.getInt("Level") %></td> <td><%=rs.getString("City") %></td></tr> 
																 <%
																	}  
										
																	 
																}
																catch(Exception e)
																{
																	e.printStackTrace();
																}
																
																
																%> 
																</tbody>
															</table>
														<h3 class="inner-tittle two">Orange Zone</h3>
														  <div class="graph">
															<div class="tables">
														
																<table class="table table-bordered"> <thead> <tr> <th>Location Name</th> <th>Address</th> <th>Reason</th> <th>Latitude</th> <th>Longitude</th> <th>Level</th> <th>City</th> </tr> </thead> <tbody>
																<%
																 try
																{
																	 Connection con = ConnectionDB.connect(); 
																	 PreparedStatement ps1 = con.prepareStatement("select * from blackspot where Level=1 "); 
																	 
																	 ResultSet rs = ps1.executeQuery(); 
																	 while(rs.next())
																	{
																%>  
																 	<tbody> <tr> <td><%=rs.getString("Lname") %></td> <td><%=rs.getString("Add") %></td> <td><%=rs.getString("Reason") %></td> <td><%=rs.getString("Latitude") %></td> <td><%=rs.getString("Longitude") %></td>  <td><%=rs.getInt("Level") %></td> <td><%=rs.getString("City") %></td></tr> 
																 <%
																	}  
										
																	 
																}
																catch(Exception e)
																{
																	e.printStackTrace();
																}
																
																
																%> 
																</tbody>
															</table> 
															<h3 class="inner-tittle two">Yellow Zone</h3>
														  <div class="graph">
															<div class="tables">
														
																<table class="table table-bordered"> <thead> <tr> <th>Location Name</th> <th>Address</th> <th>Reason</th> <th>Latitude</th> <th>Longitude</th> <th>Level</th> <th>City</th> </tr> </thead> <tbody>
																<%
																 try
																{
																	 Connection con = ConnectionDB.connect(); 
																	 PreparedStatement ps1 = con.prepareStatement("select * from blackspot where Level=0 "); 
																	 
																	 ResultSet rs = ps1.executeQuery(); 
																	 while(rs.next())
																	{
																%>  
																 	<tbody> <tr> <td><%=rs.getString("Lname") %></td> <td><%=rs.getString("Add") %></td> <td><%=rs.getString("Reason") %></td> <td><%=rs.getString("Latitude") %></td> <td><%=rs.getString("Longitude") %></td>  <td><%=rs.getInt("Level") %></td> <td><%=rs.getString("City") %></td></tr> 
																 <%
																	}  
										
																	 
																}
																catch(Exception e)
																{
																	e.printStackTrace();
																}
																
																
																%> 
																</tbody>
															</table>
																
																		
													
										
										
										
										
										
										
										
										<!--//graph-visual-->
									</div>
									<!--//outer-wp-->
									 <!--footer section start-->
										
									<!--footer section end-->
								</div>
							</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.html"> <span id="logo"> <h1>Security</h1></span> 
					<!--<img id="logo" src="" alt="Logo"/>--> 
				  </a> 
				</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
							<div class="down">	
									  <a href="index.html"><img src="download.png"  width="150" height="150"></a>
									  <a href="index.html"><span class=" name-caret">Police</span></a>
									 <p>Alert Today-Alive Tomorrow</p>
									</div>
							   <!--//down-->
                                  <div class="menu">
									<ul id="menu" >
										 <li id="menu-academico" ><a href="addBlackSpots.html"><i class="fa fa-home"></i> <span> Add Black Spot</span> <span class="fa fa-angle-right" style="float: right"></span></a>
 										  <li id="menu-academico" ><a href="viewBlackSpotD.jsp"><i class="fa fa-columns"></i> <span> View Black Spot</span> <span class="fa fa-angle-right" style="float: right"></span></a>
 										   <li id="menu-academico" ><a href="#"><i class="fa fa-table"></i> <span> Generate Report</span> <span class="fa fa-angle-right" style="float: right"></span></a>
										   <ul id="menu-academico-sub" >
											<li id="menu-academico-avaliacoes" ><a href="ZoneWise.jsp"> Zone Wise</a></li>
											<li id="menu-academico-boletim" ><a href="ReasonWise.jsp">Reason Wise</a></li>
											<li id="menu-academico-avaliacoes" ><a href="city.jsp">City Wise</a></li>
											
										  </ul>
										</li>
								
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>