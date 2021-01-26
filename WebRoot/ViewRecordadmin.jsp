<%@page import="mypack.ConnectionSet"%>
<%@ page import="java.sql.*"%>

<%@ page language="java" import="mypack.LoginDao" %>
<%@page import="java.util.ArrayList"%>
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
tr:nth-child(odd){background-color: beige}

th {
    width: 50%;
    background-color: teal;
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

    </head>
    

    
    
    <body id="top" class="    pace-done" data-aos-easing="ease-in-sine" data-aos-duration="600" data-aos-delay="100"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
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
                        <li><a href="about.jsp" title="">Home</a></li>
                        <li>
                           <a href="admin.jsp" title="">View Budget</a>
                        </li>
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
			<h1 class="w3layouts_head"></h1>
				<div class="w3layouts_main_grid">
				<br>
				
	<%
	
response.setHeader("cache-control","no-store");
response.setHeader("paragma","no-cache");
response.setDateHeader("Expire",0);
	
	int row=0,cou=0,count=0,i=0;
	String c=null;
    Connection con=null;
    String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3307/e_budget";
	String uname="root";
	String password="root";
	ArrayList<String> ar=new ArrayList<String>();
	try {
		Class.forName(driver);
		con=DriverManager.getConnection(url, uname, password);
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
String query2=null;
String myr=null;
String var=request.getParameter("department");%>
<label id="label_dept" style="color: white; font-size: 20">Department: <%=var %></label><br><br>
<%
String month=request.getParameter("month");
String year=request.getParameter("year");
	String query="select count(column_name) from information_schema.columns where table_name = '"+var+"' order by ordinal_position;";	
	if(month.equalsIgnoreCase("all"))
	{
	if(var.equalsIgnoreCase("hr")){			
	query2="select sum(appraisal) as appraisal,sum(incentives) as incentives,sum(training) as training,sum(recruitment) as recruitment,sum(advertisement) as advertisement,sum(miscellaneous) as miscellaneous from hr where date like '%"+year+"';";
	}
	else if(var.equalsIgnoreCase("production")){			
	query2="select sum(raw_materials) as raw_materials,sum(machines) as machines,sum(packing) as packing,sum(miscellaneous) as miscellaneous from production where date like '%"+year+"';";
	}
	else if(var.equalsIgnoreCase("marketing")){			
		query2="select sum(purchasing) as purchasing,sum(promotion) as promotion,sum(review_expanses) as review_expanses,sum(miscellaneous) as miscellaneous from marketing where date like '%"+year+"';";
		}
	else if(var.equalsIgnoreCase("finance")){			
		query2="select sum(payroll) as payroll,sum(taxes) as taxes,sum(bills) as bills,sum(insurance) as insurance,sum(rents) as rents,sum(others) as others from finance where date like '%"+year+"';";
		}
	}
	else
	{myr=month+"/"+year;
	query2="select * from "+var+" where date like '%"+myr+"';";
	}
	Statement stmt=con.createStatement();
    Statement stmt2=con.createStatement();
    ResultSet rs=stmt.executeQuery(query);
    while(rs.next())
    {
    	c=rs.getString(1);
    }
   cou=Integer.parseInt(c);
   c=String.valueOf(--cou);
   String query1="select column_name from information_schema.columns where table_name = '"+var+"' order by ordinal_position limit "+c+";";	

    ResultSet rs1=stmt.executeQuery(query1);
    ResultSet rs2=stmt2.executeQuery(query2);
        %>    		
    <table id='main'>
    <tr>
    <th>Field</th>
    <th>Budget(in Rs.)</th>
    </tr>

<tr>
<td>

<%
    while(rs1.next())
	{
	count=rs1.getRow();
	%>			
    <table><tr><td ><%=rs1.getString(1)%>
 </td></tr></table>
  <%}%></td>
<td>
 <%
	while(rs2.next() && count!=0) 
	{
	%>
<table><tr><td><%= rs2.getString(++i)%>
	 </td>
	</tr></table>
	<% 
     rs2.beforeFirst();
     count--;}
     %>
    </td>
</table>
</div>
                        </div> 
                                           
                       
			                  
	</div>
       
      
</body>
</html>