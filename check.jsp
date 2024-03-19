<%-- 
    Document   : check
    Created on : Sep 25, 2022, 6:18:30 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
    </head>
    <body>
       <%
         String userid=request.getParameter("eid");
         String passwd=request.getParameter("pass");
     try
      {
        Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
 PreparedStatement ps=con.prepareStatement("select * from admin where uid=? and password=?");
        ps.setString(1,userid);
        ps.setString(2,passwd);
             ResultSet rs=ps.executeQuery();
              if(rs.next())
             {
              response.sendRedirect("master.jsp");   
             }
             else
             {
              out.println("Could not login please check your data"); 
          %>
<br><a href="login.jsp">Go back </a>
<% }
             }
            catch(Exception e)
            {
             out.println("Error"+e);   
            }
     %>
      
    </body>
</html>
