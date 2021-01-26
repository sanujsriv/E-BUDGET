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
%>

<!DOCTYPE html>
<!-- saved from url=(0104)file:///C:/Users/dell/Downloads/Files_downloaded_by_AirDroid/philosophy-colorlib/New%20folder/about.html -->
<html class="js svg audio canvas cssremunit csscalc cssgradients supports no-touchevents video cssanimations cssfilters flexbox flexboxlegacy no-flexboxtweener flexwrap csstransforms csstransforms3d csstransitions backgroundblendmode cl-loaded svg audio canvas cssremunit csscalc cssgradients supports no-touchevents video cssanimations cssfilters flexbox flexboxlegacy no-flexboxtweener flexwrap csstransforms csstransforms3d csstransitions backgroundblendmode" lang="en" style="" data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!--- basic page needs
    ================================================== -->
    <title>E-Budgeting</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="./about_files/base.css">
    <link rel="stylesheet" href="./about_files/vendor.css">
    <link rel="stylesheet" href="./about_files/form-elements.css">
    <link rel="stylesheet" href="about_files/font-awesome.min.css">
    
    
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">-->
    
    <link rel="stylesheet" href="./about_files/style.css">    
    <link rel="stylesheet" href="./about_files/main.css">

    
    
    
    
    <!-- script
    ================================================== -->
    <script src="./about_files/modernizr.js.download"></script>
    <script src="./about_files/pace.min.js.download"></script>

    <!-- favicons
    ================================================== -->
    <link rel="shortcut icon" href="file:///C:/Users/dell/Downloads/Files_downloaded_by_AirDroid/philosophy-colorlib/New%20folder/favicon.ico" type="image/x-icon">
    <link rel="icon" href="file:///C:/Users/dell/Downloads/Files_downloaded_by_AirDroid/philosophy-colorlib/New%20folder/favicon.ico" type="image/x-icon">

    
    <style>
        #top{
            background-color: dimgrey;
        }
        #image{
            border-radius: 50%;
            
        }

        h4{
    text-transform:lowercase;
    }

        
        .col-sm-offset-4 {
    margin-left: 15%;
  }
        .col-sm-9 {
    width: 75%;
  }
        .form-group {
  margin-bottom: 15px;
}
        .form-top-right {
    float: left;
    width: 25%;
    padding-top: 5px;
    font-size: 66px;
    color: #fff;
    line-height: 100px;
    text-align: right;
    opacity: 0.3;
}
        .form-top-left {
    float: left;
    width: 75%;
    padding-top: 25px;
}
        .form-bottom {
    padding: 25px 25px 30px 25px;
    background: #444;
    background: rgba(0, 0, 0, 0.3);
    -moz-border-radius: 0 0 4px 4px;
    -webkit-border-radius: 0 0 4px 4px;
    border-radius: 0 0 4px 4px;
    text-align: left;
}
        
        .form-control {
  display: block;
  width: 100%;
  height: 34px;
margin: auto;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 100px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
        
        .sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0,0,0,0);
    border: 0;
            
#label_dept{
        color: red;
                
            }        
            
            
}
    </style>
    
    
</head>

<body id="top" class="pace-done" data-aos-easing="ease-in-sine" data-aos-duration="600" data-aos-delay="100"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>
    
    
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
    
    
    
    <div class="center-container">
		<div class="main">
			<h1 class="w3layouts_head"></h1>
				<div class="w3layouts_main_grid">
                    <img src="Images/avatar.jpg" id="image">
            </div>
        </div>
    </div>
    
     <footer class="s-footer">
    <div class="row">
                
    <div class="col-twelve md-twelve mob-full s-footer__sitelinks">
                                <h4>Contact</h4>
        <p style="color:white;">You can Contact via:-<br><br></p>
        
        <ul class="header__social">
                    <li>
                        <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    </li>
                </ul> <!-- end header__social -->
        
        </div>
      <br>
        </div>  
        <div class="s-footer__bottom">
            <div class="row">
                <div class="col-full">
                    <div class="s-footer__copyright">
                        <span>© Copyright NASSCOM 2018</span> 
                    </div>

                    <div class="go-top link-is-visible">
                        <a class="smoothscroll" title="Back to Top" href="file:///C:/Users/dell/Downloads/Files_downloaded_by_AirDroid/philosophy-colorlib/New%20folder/about.html#top"></a>
                    </div>
                </div>
            </div>
        </div> <!-- end s-footer__bottom -->

    </footer> <!-- end s-footer -->
    </body>
</html>