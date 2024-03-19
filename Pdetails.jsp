<%-- 
    Document   : Pdetails
    Created on : Sep 25, 2022, 7:06:29 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Participants details Page</title>
    </head>
    <body>
    <p align="center"><h4>Participants Details for :  <%=request.getParameter("event")%></h4></p> 
    <table border="2">
        <tr><th>Student Name </th>
            <th> Class</th>
        </tr>
        
            <%
      try
      {
       Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
 PreparedStatement ps=con.prepareStatement("select * from user where e_name=?");
        ps.setString(1,request.getParameter("event"));
        ResultSet rs=ps.executeQuery();
          while(rs.next())
             {   
            %>
            <tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
        
            </tr>
        <% }}catch(Exception e){
        out.println("Error : "+e);
        }     
                
                %>
        
        
        
    </table>
        
    </body>
</html>
