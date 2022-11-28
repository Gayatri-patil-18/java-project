<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    
<%@ page import="com.rcpit.blackspot.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Augment an Admin Panel Category Flat Bootstrap Responsive Web Template | Tables :: w3layouts</title>
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

													<h3 class="inner-tittle two">Police Station Information</h3>
														  <div class="graph">
															<div class="tables">
														
																<table class="table table-bordered"> <thead> <tr> <th>Id</th> <th>Station Name</th> <th>Address</th> <th>Contact</th> <th>Email</th> <th>Action</th> </tr> </thead> <tbody>
																<%
																 try
																{
																	 Connection con = ConnectionDB.connect(); 
																	 PreparedStatement ps1 = con.prepareStatement("select * from policestation ");  
																	 ResultSet rs = ps1.executeQuery(); 
																	 while(rs.next())
																	{
																%>  
																 	<tbody> <tr> <td><%=rs.getInt("pid") %></td> <td><%=rs.getString("Sname") %></td> <td><%=rs.getString("Sadd") %></td> <td><%=rs.getString("Scontact") %></td> <td><%=rs.getString("Semail") %></td>  <td><a href="deletePolice.jsp?pid=<%=rs.getInt("pid") %>" >--Delete--</a></td> </tr> 
																 <%
																	}  
										
																	 
																}
																catch(Exception e)
																{
																	e.printStackTrace();
																}
																
																
																%>
																 	
																 	
																 	</thead> 
															</div>
													</div>
										</div>
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
									  <a href="index.html"><span class=" name-caret">Admin</span></a>
									 <p>Alert Today-Alive Tomorrow</p>
									</div>
							   <!--//down-->
                                  <div class="menu">
									<ul id="menu" >
										 <li id="menu-academico" ><a href="policeStation.html"><i class="fa fa-home"></i> <span> Add Police Station</span> <span class="fa fa-angle-right" style="float: right"></span></a>
 										  <li id="menu-academico" ><a href="viewPolice.jsp"><i class="fa fa-columns"></i> <span> View Police Station</span> <span class="fa fa-angle-right" style="float: right"></span></a>
 										   <li id="menu-academico" ><a href="viewBlackSpots.jsp"><i class="fa fa-table"></i> <span>View All Spots</span> <span class="fa fa-angle-right" style="float: right"></span></a>
 										  
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