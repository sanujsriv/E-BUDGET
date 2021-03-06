<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="mypack.LoginDao" %>
<jsp:useBean id="obj" class="mypack.LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
response.setHeader("cache-control","no-store");
response.setHeader("paragma","no-cache");
response.setDateHeader("Expire",0);
String sessionVar=(String)session.getAttribute("session");
if(sessionVar==null)
{
response.sendRedirect("about.jsp");
}
 %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html class="js svg audio canvas cssremunit csscalc cssgradients supports no-touchevents video cssanimations cssfilters flexbox flexboxlegacy no-flexboxtweener flexwrap csstransforms csstransforms3d csstransitions backgroundblendmode cl-loaded svg audio canvas cssremunit csscalc cssgradients supports no-touchevents video cssanimations cssfilters flexbox flexboxlegacy no-flexboxtweener flexwrap csstransforms csstransforms3d csstransitions backgroundblendmode" lang="en" style="" data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36">
<head>
<title>Production Department</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Event Registration Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- //custom-theme -->
    
    <link rel="stylesheet" href="./about_files/main.css">
    <link rel="stylesheet" href="./about_files/base.css">
    <link rel="stylesheet" href="./about_files/vendor.css">
    <link rel="stylesheet" href="./about_files/form-elements.css">  
    <link rel="stylesheet" href="./about_files/font-awesome.min.css">
        
    
<link href="about_files/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="about_files/js/jquery-2.1.4.min.js"></script>
<!-- //js ->
<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
 <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>

    
    
    <style>
    
    h1{
   margin-top: 2.5rem;
   margin-bottom: 1.8rem;
   font-size: 2.4rem;
   line-height: 1.25;
   letter-spacing: -.1rem;
 font-family: "librebaskerville-bold", serif;
   color: #000000;
   font-style: normal;
   font-weight: normal;
   text-rendering: optimizeLegibility;
}

    
    
    
    
    </style>
    
    
    
    
    
    
    
    </head>
    
<body>
    
    
    <body id="top" class="    pace-done" data-aos-easing="ease-in-sine" data-aos-duration="600" data-aos-delay="100"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

    <!-- pageheader
    ================================================== -->
    <div class="s-pageheader">
        <header class="header">
            <div class="header__content row">

        
                        <div><h1 style="color:white;">E-Budgeting System</h1></div>
                    
               

				<div>
                <a class="header__toggle-menu" href="file:///C:/Users/reSHAnRIQ/Downloads/Compressed/philosophy-colorlib/New%20folder/about.html#0" title="Menu"><span>Menu</span></a>

                <nav class="header__nav-wrap">

                    <h2 class="header__nav-heading h6">Site Navigation</h2>

                    <ul class="header__nav">
                        <li><a href="<%=sessionVar%>.jsp" title="">Home</a></li>
                         <li>
                            <a href="<%=sessionVar%>.jsp" title="">New Budget</a>
                        </li>
                        <li>
                           <a href="ViewBudget.jsp" title="">View Budget</a>
                        </li>
                        <li><a href="contact.jsp" title="">Contact Admin</a></li>
                        <li><a href="Logout.jsp" title="">Logout</a></li>
                        </ul> <!-- end header__nav -->

                    <a href="file:///C:/Users/reSHAnRIQ/Downloads/Compressed/philosophy-colorlib/New%20folder/about.html#0" title="Close Menu" class="header__overlay-close close-mobile-menu">Close</a>

                </nav> <!-- end header__nav-wrap -->
				</div>
            </div> <!-- header-content -->
        </header> <!-- header -->

    </div> <!-- end s-pageheader -->

    
    
    
    
    
    
<!-- banner -->
	<div class="center-container">
		<div class="main">
			<h1 class="w3layouts_head">Please Submit Budget</h1>
				<div class="w3layouts_main_grid">
					<form action="ProductionDetails.jsp" method="post" class="w3_form_post">
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Raw Material </label>
								<input type="text" name="raw_material" placeholder="Raw Material" required="">
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Machines</label>
								<input type="text" name="machines" placeholder="Machines" required="">
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Packing</label>
								<input type="text" name="packing" placeholder="Packing" required="">
								</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Miscellaneous</label>
								<input type="text" name="misc" placeholder="Miscellaneous" required="">
								</span>
						
						</div>
						<div class="agileits_w3layouts_main_grid w3ls_main_grid">
							<span class="agileinfo_grid">
								<label>Date / Time </label>
								<div class="agileits_w3layouts_main_gridl">
									<input class="date" id="datepicker" name="date" type="text" value="dd/mm/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">
								</div>
								
									<div class="clear"> </div>
							</span>
						</div>
				<div class="w3_main_grid">
						<div class="w3_main_grid_right">
							<input type="submit" value="Submit">
						
                    
							<input type="reset" value="Reset">
					
                    
                            <input type="button" value="Back">
						</div>
					</div>
				</form>
			</div>
		<!-- Calendar -->
			<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
					<script>
						$(function() {
							$( "#datepicker" ).datepicker({dateFormat: 'dd/mm/yy'});
						});
					</script>
		<!-- //Calendar -->
			<div class="w3layouts_copy_right">
				<div class="container">
					<p></a></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>