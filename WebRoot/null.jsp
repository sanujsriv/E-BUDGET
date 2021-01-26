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

<html>
    <head>
        <script>
        var x=confirm("Please Login First!!");
            if(x==true)
                {window.location.href="about.jsp";}
            else   
                {window.history.back();}
        </script>
    </head>
    </html>
    