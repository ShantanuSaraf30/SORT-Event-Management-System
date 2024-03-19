<%-- 
    Document   : index
    Created on : Sep 25, 2022, 2:35:52 PM
    Author     : atulsaraf
--%>

<%@page  language="java" import="java.sql.*,javax.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notification Page</title>
    </head>
    <body> 
        <p align="right"><a href="login.jsp">Council sign in</a></p>
        <% 
try
            {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("select * from event where status='UPCOMING'");
             
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             { %>
  <% // <button onclick="location.href='test.html'">Details</button>%>
     <form  method="post" action="RegistrationForm.jsp">
      <br><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly  style="border: none"></input><br>  
      <button type="submit" formaction="Detail.jsp">Details</button>
      <input type="submit" value="Register"/>
    </form><hr>
         <%   }
            }
catch(Exception e)
{
out.println("error: "+e);
}

%>   
    
</table>
    </body>
</html>
