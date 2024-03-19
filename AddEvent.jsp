<%-- 
    Document   : AddEvent
    Created on : Sep 25, 2022, 7:05:56 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Event Page</title>
    </head>
    <body>
       <form action="AddEvent.jsp" method="post">
            Event Name:<input type="text" name="ename"/><br/>
            Date:<input type="date" name="edate"/><br/>
            Details :<textarea name="details"></textarea>
            Status :<select name="status">
                <option value="UPCOMING">UPCOMING</option>
                <option value="DONE">DONE</option>
            </select>
            <input type="submit" value="ADD" /><br/>
</form>
       <%
       String name=request.getParameter("ename");
        String ed=request.getParameter("edate");
        String event_det=request.getParameter("details");
        String e_status=request.getParameter("status");
         try
            {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("insert into event values(?,?,?,?)");
             ps.setString(1,name);
             ps.setDate(2,Date.valueOf(ed));
             ps.setString(3,event_det);
             ps.setString(4,e_status);
            ps.executeUpdate(); %> 
            <b>  Event added suscessfully !!!      </b> <br>
                 
           <% }catch (Exception e)
            {
           // out.println("error  " +e);
            }
            
       %>
    </body>
</html>
