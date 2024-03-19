<%-- 
    Document   : Emodify
    Created on : Sep 25, 2022, 7:06:59 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Modify Page</title>
    </head>
    <body>
        <%
           
           try
            {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("select * from event where name=?");
             ps.setString(1,request.getParameter("event"));
             ResultSet rs=ps.executeQuery();
             if(rs.next())
             { %>
<h2> EDIT Event </h2>
<form action="Emodify.jsp" method="post">
  Event Name= <input type="text" name="te1" value="<%=rs.getString(1)%>"/><br>
 Date=<input type="date" name="te2" value="<%=rs.getString(2)%>"/><br>
 Details=<input type="text" name="te3" value="<%=rs.getString(3)%>"/><br>
 Status :<select name="te4">
                <option value="UPCOMING">UPCOMING</option>
                <option value="DONE">DONE</option>
            </select>
  <input type="submit" value="Update"/>
</form>
<% }
            PreparedStatement up=con.prepareStatement("update event set name=?,date=?,details=?,status=? where name=?");
           up.setString(1,request.getParameter("te1"));
           up.setDate(2,Date.valueOf(request.getParameter("te2")));
           up.setString(3,request.getParameter("te3"));
           up.setString(4,request.getParameter("te4"));
           up.setString(5,request.getParameter("te1"));
           up.executeUpdate();
           out.println("Modification  successful !!!");
            }
           catch(Exception e)
           {
              // out.println("Error"+ e);
           }
       %>
        
    </body>
</html>
