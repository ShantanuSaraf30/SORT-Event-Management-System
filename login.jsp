<%-- 
    Document   : login
    Created on : Sep 25, 2022, 6:11:22 PM
    Author     : atulsaraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In Page</title>
    </head>
    <body>
         <form action="check.jsp" method="post">
            Email Id:<input type="text" name="eid"/><br>
            password:<input type="password" name="pass"/><br>

<input type="submit" value="Sign In"/>
</form>
    </body>
</html>
