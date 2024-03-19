<%-- 
    Document   : AddCouncil
    Created on : Sep 25, 2022, 7:08:40 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Council Member Page</title>
    </head>
    <body>
            <%
       String uid=request.getParameter("cid");
        String pass=request.getParameter("cpass");
        try
            {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("insert into admin values(?,?)");
             ps.setString(1,uid);
             ps.setString(2,pass);
             ps.executeUpdate(); %> 
            <b>  Member added suscessfully !!!      </b> <br>
                 
           <% }catch (Exception e)
            {
         out.println("error  " +e);
            }
            
       %>
        
    </body>
</html>
