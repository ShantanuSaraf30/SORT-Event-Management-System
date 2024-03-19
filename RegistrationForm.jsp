<%-- 
    Document   : Registration
    Created on : Sep 25, 2022, 5:18:17 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration  Page</title>
    </head>
    <body>
        <%
          String e1=request.getParameter("t1");
           %>
        Registration Form <br/><br/>
<form action="Reg.jsp" method="post">
    Event_Name:<input type="text"  name="ue" value="<%=e1%>" readonly style="border: none"/><br>
            user Name:<input type="text" name="un"/><br>
            class:<input type="text" name="uc"/><br>
            
<input type="submit" value="Register">
</form>
    </body>
</html>
