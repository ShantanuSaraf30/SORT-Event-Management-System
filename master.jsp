<%-- 
    Document   : master.jsp
    Created on : Sep 25, 2022, 6:10:43 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Master Page</title>
    </head>
    <body>
        <% 
try
            {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shan","root","123");
             PreparedStatement ps=con.prepareStatement("select * from event");
             
             ResultSet rs=ps.executeQuery();
             %>
           
            <form name="m1" method="post" action="AddEvent.jsp">
            Event: <select name="event">
                 <% while(rs.next())
             { 
               String en=rs.getString(1);
                 %>
             <option value="<%= en%>"> <%=en%> </option>
            <% } %>
            </select> <input type="submit" value="Add New"/> <br>
            <button type="submit" formaction="Pdetails.jsp">Participants</button>
            <button type="submit" formaction="showEvent.jsp">Display</button>
            <button type="submit" formaction="Emodify.jsp">Modify </button>
            <button type="submit" formaction="Edelete.jsp">Delete </button>
                   
        </form><br>
            <hr>
            <form  action="AddCouncil.jsp" method="post">
                <b>Council Details :</b><br>
                Email id :<input type="text" name="cid"/><br>
                password :<input type="password" name="cpass"/><br>
                <button type="submit" formaction="Cmodify.jsp" >Modify</button>
                <button type="submit" formaction="deletemember.jsp" >DeleteMember</button>
                <input type="submit" value="AddMember"/>
            </form>
             <%
             }catch(Exception e){} 
             
%>
    </body>
</html>
