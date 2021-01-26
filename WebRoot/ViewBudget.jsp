<%@page import="mypack.ConnectionSet"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import="mypack.LoginDao" %>
<jsp:useBean id="obj" class="mypack.LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
String sessionVar=(String)session.getAttribute("session");
%>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html class="js svg audio canvas cssremunit csscalc cssgradients supports no-touchevents video cssanimations cssfilters flexbox flexboxlegacy no-flexboxtweener flexwrap csstransforms csstransforms3d csstransitions backgroundblendmode cl-loaded svg audio canvas cssremunit csscalc cssgradients supports no-touchevents video cssanimations cssfilters flexbox flexboxlegacy no-flexboxtweener flexwrap csstransforms csstransforms3d csstransitions backgroundblendmode" lang="en" style="" data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36">
<head>
<title>View Budget</title>
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
        
        table {
    border-collapse: collapse;
    
    width: 100%;
    margin: auto
        }

th, td {
     width: 50%;
    text-align: center;
    padding: 8px;
    border-spacing: 5px;
}

tr:nth-child(even){background-color: beige}
tr:nth-child(odd){background-color: aliceblue}

th {
    width: 50%;
    background-color: #36304a;
    color: white;
    border-radius: 10px 10px 0 0;
}

    
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
    
    <script type="text/javascript">
    function fun()
    { 
    	var jsp='<%= sessionVar %>';
 		if(jsp=='null')
 		document.f.action="null.jsp";
 		else
 		{
 			document.f.action="ViewRecord.jsp"
 			document.f.submit();
 		}	
    	
    }
    </script>

    </head>
    

    
    
    <body id="top" class="    pace-done" data-aos-easing="ease-in-sine" data-aos-duration="600" data-aos-delay="100"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">

<script>
</script>


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

        
                      <h1 align="center" style="color:white;"> <div>E-Budgeting System</div></h1>
                    
               

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
			<h1 class="w3layouts_head">Select to view the Budget</h1>
				<div class="w3layouts_main_grid">
				
					<form name="f" onsubmit="fun()">
						<div class="w3_main_grid">
						<div class="w3_main_grid_right">
			                    		<label id="label_dept" style="color: white">Monthly</label>
                    
                                        <select class="form-control" name="month">
                                        <option value="all">All</option>
                                        <option value="01">January</option>
                                        <option value="02">Febuary</option>
                                        <option value="03">March</option>
                                        <option value="04">April</option>
                                        <option value="05">May</option>
                                        <option value="06">June</option>
                                        <option value="07">July</option>
                                        <option value="08">August</option>
                                        <option value="09">September</option>
                                        <option value="10">October</option>
                                        <option value="11">November</option>
                                        <option value="12">December</option>
        
                                            
                                        
                            </select>
			                    		<label id="label_dept" style="color: white">Yearly</label>
                            
                                        <select class="form-control" name="year">
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        </select>
                                        <!--                           
							<div>
					<a href="javascript:handleClick()"><div id="a"><button>Submit</button></div></a>                         
                            </div>
                            -->
                            <input type="submit" value="submit"/>
                            </div>
                        </div> 
                                           
                        </form>
		<!-- Calendar -->

                    
			
		</div>
                    
            <br><br>
     
           
			                  
	</div>
        </div>
        
</body>
</html>