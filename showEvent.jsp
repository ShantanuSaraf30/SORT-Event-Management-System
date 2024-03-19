<%-- 
    Document   : showEvent
    Created on : Sep 27, 2022, 5:25:21 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events View</title>
    </head>
    <body>
        <p align="center">Events View</p>
       <table border="2" align="center">
        <tr><th>Event Name </th>
            <th>Date</th>
           <th>Details</th>
           <th>Status</th>
        </tr>
        
            <%
      try
      {
       Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
 PreparedStatement ps=con.prepareStatement("select * from event");
          ResultSet rs=ps.executeQuery();
          while(rs.next())
             {   
            %>
            <tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
        
            </tr>
        <% }}catch(Exception e){
        out.println("Error : "+e);
        }     
                
                %>
        
        
        
    </table>
    </body>
</html>
