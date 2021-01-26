<%@ page  import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="mypack.LoginDao" %>

<jsp:useBean id="obj" class="mypack.LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'Login.jsp' starting page</title>
    
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
    
     try{
    //String username=request.getParameter("username"); 
    //String password=request.getParameter("password"); 
    //String dept=request.getParameter("dept"); 
    //out.print(username);
    //out.print(password);
    //out.print(dept);
     boolean status=LoginDao.validate(obj);
    //out.print(status);
    String Department=(String)obj.getDept();
    //out.print(Department);
     if(status && Department.equalsIgnoreCase("HR")){
     session.setAttribute("session",obj.getDept());  
     response.sendRedirect("hr.jsp");    
     }
     else if(status && Department.equalsIgnoreCase("PRODUCTION")){  
     session.setAttribute("session",obj.getDept());
     response.sendRedirect("production.jsp");    
     }
     else if(status && Department.equalsIgnoreCase("FINANCE")){  
     session.setAttribute("session",obj.getDept());
     response.sendRedirect("finance.jsp");   
     }
     else if(status && Department.equalsIgnoreCase("MARKETING")){  
     session.setAttribute("session",obj.getDept());
     response.sendRedirect("marketing.jsp");  
          }
     else if(status && Department.equalsIgnoreCase("NIL")){  
         session.setAttribute("session",obj.getDept());
         response.sendRedirect("admin.jsp");    
     }
     
     else
     {  
     out.print("<script> alert('Incorrect Details Entered!');</script>");
    
     // request.getRequestDispatcher("about.jsp").include(request,response);
    }
  }   catch(Exception e){
     
}  
    %>
  </body>
</html>
