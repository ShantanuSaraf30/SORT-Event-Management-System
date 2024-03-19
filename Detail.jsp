<%-- 
    Document   : test1
    Created on : Sep 25, 2022, 4:50:47 PM
    Author     : atulsaraf
--%>

<%@page language="java" import="javax.sql.*,java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
           
          
           String ename=request.getParameter("t1");
           try
            {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("select * from event where name=?");
             ps.setString(1,ename);
             ResultSet rs=ps.executeQuery();
             if(rs.next())
             { %>
             Event Name : <lable><b><%=rs.getString(1)%></b></lable><br>
             Date : <lable><b><%=rs.getString(2)%></b></lable><br>
             Details : <lable><b><%=rs.getString(3)%></b></lable><br>
             <%}
            }
             catch(Exception e)
                     {
           out.println("Error "+e);
                     }
         
             
             
              
       %>
    </body>
</html>
