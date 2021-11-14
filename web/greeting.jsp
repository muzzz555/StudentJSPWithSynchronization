<%-- 
    Document   : greeting
    Created on : Nov 9, 2021, 2:11:40 PM
    Author     : AN515-43
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <h1>Hello <% out.print(request.getParameter("username"));%></h1>
    </body>
</html>
