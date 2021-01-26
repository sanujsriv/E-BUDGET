<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="mypack.ConnectionSet"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import="mypack.LoginDao" %>
<jsp:useBean id="obj" class="mypack.LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Common.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>

       
        #main{
        background-color: beige;
    border-bottom:2px solid purple;
    border-collapse: collapse;   
    width: 100%;
    margin: auto
        }
td {
    width: 50%;
    text-align: -webkit-center;
    font-size: 18;
    padding: 8px;
    border-spacing: 5px;
}

th {font-size: 24;
	text-align: -webkit-center;
    width: 50%;
    padding: 8px;
    border-spacing: 5px;
    background-color: #36304a;
    color: white;
    border-radius: 10px 10px 0 0;
}


</style>

  </head>
  
  <body>
    <%int count=0,i=0;
    Connection con=null;
     String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3307/e_budget";
	String uname="root";
	String password="root";
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
String sessionVar=(String)session.getAttribute("session");
String month=request.getParameter("month");
String year=request.getParameter("year");
out.print(month);
out.print(year);
	String query="select column_name from information_schema.columns where table_name ='' order by ordinal_position;";	
	if(month.equalsIgnoreCase("all"))
	{
	query2="select * from marketing where date like '%"+year+"';";
	}
	else
	{myr=month+"/"+year;
	query2="select * from marketing where date like '%"+myr+"';";
	}
	Statement stmt=con.createStatement();
    Statement stmt2=con.createStatement();
    ResultSet rs=stmt.executeQuery(query);
    ResultSet rs2=stmt2.executeQuery(query2);
    %>
    <div id="b" class="w3layouts_main_grid">		
    <table id='main'>
    <tr>
    <th>Field</th>
    <th>Budget(in Rs.)</th>
    </tr>

<tr>
<td>

<%
    while(rs.next())
	{
	count=rs.getRow();
	%>			
    <table><tr><td ><%=rs.getString(1)%>
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
  </body>
</html>
