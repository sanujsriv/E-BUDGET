<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="mypack.ProductionDao" %>
<jsp:useBean id="obj" class="mypack.ProductionBean"/>   
<jsp:setProperty property="*" name="obj"/> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProductionDetails.jsp' starting page</title>
    
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

int status=ProductionDao.productionInsert(obj); 
out.print(status); 
if(status>0)  {
 out.print("<script> alert('Correct Details Entered!');</script>");
response.sendRedirect("production.jsp");

}
 else
     {  
     out.print("<script> alert('Incorrect Details Entered!');</script>");
    } 
  
%>  
    
  </body>
</html>
