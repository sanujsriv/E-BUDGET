<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="mypack.MarketingBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="mypack.MarketingDao" %>
<jsp:useBean id="obj" class="mypack.MarketingBean"/>   
<jsp:setProperty property="*" name="obj"/> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MarketingDetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
            <%  

int status=MarketingDao.marketInsert(obj); 
out.print(status); 
if(status>0)  {
 out.print("<script> alert('Correct Details Entered!');</script>");
response.sendRedirect("marketing.jsp");

}
 else
     {  
     out.print("<script> alert('Incorrect Details Entered!');</script>");
    } 
  
%>  
    
  </body>
</html>
