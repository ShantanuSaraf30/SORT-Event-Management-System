<%-- 
    Document   : Reg
    Created on : Sep 25, 2022, 5:45:33 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
        String name=request.getParameter("un");
        String uclass=request.getParameter("uc");
        String event=request.getParameter("ue");
        
    try
            {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?)");
             ps.setString(1,name);
             ps.setString(2,uclass);
             ps.setString(3,event);
            ps.executeUpdate();
            out.println("<html>");
            out.println("<body>");
            out.println("Registration is successful !!!");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
            {
             out.println("<html>");
            out.println("<body>");
                out.println("Your Registration is unsuccessful:"+ e); 
                out.println("</body>");
            out.println("</html>");
            } 
        %>
    </body>
</html>
